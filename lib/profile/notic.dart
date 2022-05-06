import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';
import 'package:provider/provider.dart';
import '../const/colors.dart';
import '../const/provider.dart';

class NoticPage extends StatefulWidget {
  const NoticPage({Key? key}) : super(key: key);

  @override
  State<NoticPage> createState() => _NoticPageState();
}

class _NoticPageState extends State<NoticPage> {
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
                    'Уведомления',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 30,
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 355,
                  height: 61,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 14,
                          height: 14,
                          child: Image.asset('assets/images/notic.png',
                              fit: BoxFit.contain)),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Иванов Иван Иванович, обновите паспортные данные',
                          style: TextStyle(
                              color: blue900,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 12,
                            width: 55,
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              '10.02.2022',
                              style: TextStyle(
                                  color: blue900,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
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
