import 'package:flutter/material.dart';
import 'package:flyapp/const/provider.dart';
import 'package:provider/provider.dart';

import 'const/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = Provider.of<Prov>(context, listen: true).appbar;
    String rus = 'RUS';
    String eng = 'ENG';
    String uz = 'UZ';
    String tj = 'TJ';
    String cn = 'CN';
    Prov language = Provider.of(context, listen: true);

    return AppBar(
      toolbarHeight: 90.0,
      title: Container(
          height: 56,
          width: 56,
          child: ClipOval(
              child: Image.asset('assets/images/logo.png', fit: BoxFit.cover))),
      flexibleSpace: Image(
        image: AssetImage('assets/images/bg.png'),
        fit: BoxFit.cover,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '+7(499) 993 00 85',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
              PopupMenuButton(
                child: Container(
                    child: Image.asset('assets/images/${language.language}.png',
                        fit: BoxFit.cover)),
                itemBuilder: (_) => [
                  PopupMenuItem(
                      value: 'RU',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            rus,
                            style: TextStyle(
                                color: blue900,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 28,
                              child: Image.asset('assets/images/RU.png',
                                  fit: BoxFit.cover)),
                        ],
                      )),
                  PopupMenuItem(
                      value: 'US',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            eng,
                            style: TextStyle(
                                color: blue900,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 28,
                              child: Image.asset('assets/images/US.png',
                                  fit: BoxFit.cover)),
                        ],
                      )),
                  PopupMenuItem(
                      value: 'UZ',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            uz,
                            style: TextStyle(
                                color: blue900,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 28,
                              child: Image.asset('assets/images/UZ.png',
                                  fit: BoxFit.cover)),
                        ],
                      )),
                  PopupMenuItem(
                      value: 'TJ',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            tj,
                            style: TextStyle(
                                color: blue900,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 28,
                              child: Image.asset('assets/images/TJ.png',
                                  fit: BoxFit.cover)),
                        ],
                      )),
                  PopupMenuItem(
                      value: 'CN',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            cn,
                            style: TextStyle(
                                color: blue900,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 28,
                              child: Image.asset('assets/images/CN.png',
                                  fit: BoxFit.cover)),
                        ],
                      )),
                ],
                onSelected: (value) {
                  Provider.of<Prov>(context, listen: false).setLang(value);
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(90);
}
