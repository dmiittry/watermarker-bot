import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';
import '../const/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final phone = TextEditingController();
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
                    'Авторизация',
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
                    'Телефон',
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
                controller: phone,
                decoration: InputDecoration(
                  hintText: 'Введите номер телефона',
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
                  phone.text == ''
                      ? showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: Center(
                                  child: Text(
                                    'Введите телефон',
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
                      : Navigator.pushNamed(context, '/login/auth');
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
                    'Войти',
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
                    'Зарегистрироваться',
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
