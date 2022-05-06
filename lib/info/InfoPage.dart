import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flyapp/appbar.dart';
import 'package:flyapp/const/colors.dart';
import 'package:flyapp/info/info.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool? _check = true;
  var count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(children: [
              Text(
                'Количество пассажиров',
                style: TextStyle(
                    color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        count = count - 1;
                      });
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      child: Image.asset('assets/images/minus.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    '$count',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count = count + 1;
                      });
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      child: Image.asset('assets/images/plus.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              if (count > 1)
                Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/Line4.png', fit: BoxFit.cover),
                ]),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: count,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      count > 1
                          ? Column(
                              children: [
                                Text(
                                  'Пассажир №${i + 1}',
                                  style: TextStyle(
                                      color: blue900,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            )
                          : SizedBox.shrink(),
                      InfoPas(),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/Line4.png', fit: BoxFit.cover),
              SizedBox(
                height: 30,
              ),
              Text(
                'Общая стоимость',
                style: TextStyle(
                    color: blue900, fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '22 520 ₽',
                style: TextStyle(
                    color: blue500, fontSize: 32, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              CheckboxListTile(
                  title: Text(
                    'Зарегистрировать аккаунт/войти',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  value: _check,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: blue500,
                  onChanged: (bool? _newValue) {
                    setState(() {
                      _check = _newValue;
                    });
                  }),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/list/item/info/buy');
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
                    'Перейти к оплате',
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
                    'Назад',
                    style: TextStyle(
                        color: blue500,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ]),
          ),
        )));
  }
}
