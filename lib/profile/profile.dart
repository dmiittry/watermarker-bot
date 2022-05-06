import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';

import '../const/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/story');
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
                        'История купленных билетов',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/bonus');
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
                        'Бонусная программа',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notic');
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
                        'Уведомления',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/user');
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
                        'Профиль',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/information');
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
                        'Информация',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/feedback');
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
                        'Обратная связь',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Image.asset('assets/images/telegram.png',
                          fit: BoxFit.cover)),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: Color.fromRGBO(1, 100, 255, 0.05))
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false),
                child: Container(
                    child: Image.asset('assets/images/bilet-en.png',
                        fit: BoxFit.cover)),
              ),
              Container(
                  child: Image.asset('assets/images/Line9.png',
                      fit: BoxFit.cover)),
              Container(
                  child: Image.asset('assets/images/user-en.png',
                      fit: BoxFit.cover))
            ],
          ),
        ));
  }
}
