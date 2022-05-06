import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';
import 'package:provider/provider.dart';
import '../const/colors.dart';
import '../const/provider.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
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
                    'Информация',
                    style: TextStyle(
                        color: blue900,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae tempor facilisis vel dis feugiat mi et et aliquet. Consequat imperdiet nunc lorem magna varius mi eget at. Amet in ut purus ullamcorper ac pellentesque tincidunt facilisis non. Viverra semper pharetra quisque risus. Vivamus ac amet, mattis suspendisse ultrices egestas cursus elit. Dui, volutpat in metus, duis. Mattis elementum molestie commodo rhoncus mauris. Sapien arcu tincidunt dignissim fusce ullamcorper. Magna dictum in quis quam velit. Ultricies pellentesque lectus ullamcorper urna, porttitor integer ultrices nunc. Tincidunt gravida mi praesent montes, elementum felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae tempor facilisis vel dis feugiat mi et et aliquet. Consequat imperdiet nunc lorem magna varius mi eget at. Amet in ut purus ullamcorper ac pellentesque tincidunt facilisis non. Viverra semper pharetra quisque risus. Vivamus ac amet, mattis suspendisse ultrices egestas cursus elit. Dui, volutpat in metus, duis.',
                style: TextStyle(
                    color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
