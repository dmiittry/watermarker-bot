import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flyapp/appbar.dart';
import 'package:provider/provider.dart';
import '../const/colors.dart';
import '../const/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final name = TextEditingController(text: 'Иван');
  final phone = TextEditingController(text: "79241632928");
  var nameBool = true;
  var phoneBool = true;
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
                    'Мой профиль',
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
                    'Имя',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Введите ваше имя',
                  fillColor: Colors.white,
                  suffixIcon: InkWell(
                    onTap: () {
                      // setState(() {
                      //   nameBool = false;
                      // });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 24,
                      width: 24,
                      child: Image.asset('assets/images/pencil.png',
                          fit: BoxFit.contain),
                    ),
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                // readOnly: phoneBool,
                controller: phone,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  prefixIcon: Container(
                      padding: EdgeInsets.only(left: 10), child: Text('+')),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: InkWell(
                    onTap: () {
                      // setState(() {
                      //   phoneBool = false;
                      // });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 24,
                      width: 24,
                      child: Image.asset('assets/images/pencil.png',
                          fit: BoxFit.contain),
                    ),
                  ),
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5),
                    borderSide: new BorderSide(),
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
