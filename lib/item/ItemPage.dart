import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';

import '../const/colors.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 21,
                    width: 24,
                    child: Image.asset('assets/images/vylet.png',
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Вылет',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 20,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text('ГОРОД ВЫЛЕТА:',
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
                  Container(
                    height: 21,
                    width: 24,
                    child: Image.asset('assets/images/prilet.png',
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Прилёт',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 20,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text('ГОРОД ПРИЛЁТА:',
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
                  Container(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/info.png',
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Основная информация',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 20,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('В ПУТИ:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('2ч 05м',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('Азимут А4-9064',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('РУЧНАЯ КЛАДЬ:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('5 КГ',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('БАГАЖ:',
                      style: TextStyle(
                          color: grey200,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('15 КГ',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('Без питания',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Text('22 520 ₽',
                      style: TextStyle(
                          color: blue500,
                          fontSize: 32,
                          fontWeight: FontWeight.w600)),
                  Text('(Стоимость 1 взрослого билета)',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(height: 30),
              // Оформить билет
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/list/item/info');
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
                    'Оформить билет',
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
            ],
          ),
        )),
      ),
    );
  }
}
