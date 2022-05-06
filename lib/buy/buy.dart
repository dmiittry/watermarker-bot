import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';

import '../const/colors.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({Key? key}) : super(key: key);

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Text(
                'Страница Оплаты',
                style: TextStyle(
                    color: blue900, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
