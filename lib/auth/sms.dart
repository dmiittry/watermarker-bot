import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';
import 'package:provider/provider.dart';
import '../const/colors.dart';
import '../const/provider.dart';

class SmsPage extends StatefulWidget {
  const SmsPage({Key? key}) : super(key: key);

  @override
  State<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Регистрация',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Код-подтверждение',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: name,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Введите код- подтверждение из СМС',
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
              SizedBox(height: 257),
              // Оформить билет
              InkWell(
                onTap: () {
                  name.text == ''
                      ? showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: Center(
                                  child: Text(
                                    'Код неверный',
                                    style: TextStyle(
                                        color: blue900,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                actions: [
                                  CupertinoDialogAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Ок"),
                                  ),
                                ],
                              ),
                          barrierDismissible: false)
                      : {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/profile', (Route<dynamic> route) => false),
                          Provider.of<Prov>(context, listen: false)
                              .setLogin(true)
                        };
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 355,
                  height: 61,
                  decoration: BoxDecoration(
                    color: blue500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Зарегистрироваться',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 355,
                  height: 61,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: blue500)),
                  child: Text(
                    'Ввести другой номер',
                    style: TextStyle(
                        color: blue500,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
