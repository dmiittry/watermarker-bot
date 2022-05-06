import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';
import 'package:provider/provider.dart';
import '../const/colors.dart';
import '../const/provider.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
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
                    'Бонусная программа',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 334,
                        child: Column(
                          children: [
                            Image.asset('assets/images/range.png',
                                fit: BoxFit.cover),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                height: 324,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Бонусная программа должна действовать на конкретного пассажира',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.center,
                                          )),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 335,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: blue500,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            'Хорошо',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: 355,
                  height: 61,
                  decoration: BoxDecoration(
                    color: blue500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Купи 4 билета, получи 50% скидки на покупку 5-го билета!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Image.asset('assets/images/vopros.png',
                          fit: BoxFit.cover),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Card(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: 355,
                  height: 126,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: blue500)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Иванов Иван Иванович',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Для использования скидки необходимо купить ещё 2 билета',
                              style: TextStyle(
                                  color: blue900,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      )
                    ],
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
