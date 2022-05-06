import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';

import '../const/colors.dart';

class FeedBackPage extends StatefulWidget {
  const FeedBackPage({Key? key}) : super(key: key);

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  final name = TextEditingController();
  final desc = TextEditingController();
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
                    'Обратная связь',
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
                    'Тема сообщения',
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
                decoration: InputDecoration(
                  hintText: 'Введите тему сообщения',
                  fillColor: Colors.white,
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
                    'Сообщение',
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
                controller: desc,
                minLines: 5,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Введите сообщение',
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
              SizedBox(height: 154),
              // Оформить билет
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Center(
                              child: Text(
                                'Сообщение отправлено',
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
                      barrierDismissible: false);
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
                    'Отправить',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
