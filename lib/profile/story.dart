import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';
import 'package:flyapp/const/colors.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'История купленных билетов',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/story/item');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 205,
                    width: 355,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            '14:50',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'VNK',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            '2ч 05м',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Container(
                                              child: Image.asset(
                                                  'assets/images/arrow1.png',
                                                  fit: BoxFit.cover)),
                                          Text(
                                            'прямой',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            '06:10',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'MSK',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '22 500 ₽',
                                  style: TextStyle(
                                      color: blue500,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                child: Image.asset('assets/images/Line3.png',
                                    fit: BoxFit.cover)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset('assets/images/avia.png',
                                        fit: BoxFit.cover)),
                                Text(
                                  'Азимут А9-9041',
                                  style: TextStyle(
                                      color: blue900,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Container(
                                height: 22.5,
                                width: 22.5,
                                child: Image.asset('assets/images/circle.png',
                                    fit: BoxFit.cover)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        'assets/images/bagaj.png',
                                        fit: BoxFit.cover)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Багаж: 25кг',
                                  style: TextStyle(
                                      color: blue900,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        'assets/images/ruchnoi.png',
                                        fit: BoxFit.cover)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Ручная кладь: 5кг',
                                  style: TextStyle(
                                      color: blue900,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        'assets/images/pitanie.png',
                                        fit: BoxFit.cover)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Питание: нет',
                                  style: TextStyle(
                                      color: blue900,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
