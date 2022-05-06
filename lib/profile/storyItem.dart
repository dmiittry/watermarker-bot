import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';

import '../const/colors.dart';

class StoryItemPage extends StatelessWidget {
  const StoryItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Text('Фамилия:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Иванов',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('Имя:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Иван',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/Line4.png', fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('ВЫЛЕТ:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Бухара',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('АЭРОПОРТ ВЫЛЕТА:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('BHK',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('ВРЕМЯ И ДАТА ВЫЛЕТА:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('17:40 24.03.2022',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/Line4.png', fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('ПРИЛЁТА:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Москва',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('АЭРОПОРТ ПРИЛЁТА:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('VKO',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('ВРЕМЯ И ДАТА ПРИЛЁТА:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('19:45 24.03.2022',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/Line4.png', fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              //ОСНОВНАЯ ИНФОРМАЦИЯ
              Row(
                children: [
                  Text('АВИАКОМПАНИЯ:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Азимут А4-9064',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/Line4.png', fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('КОЛИЧЕСТВО ПАССАЖИРОВ:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('1',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/Line4.png', fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('СТОИМОСТЬ ПОЕЗДКИ:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('22 520 ₽',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        )),
      ),
    );
  }
}
