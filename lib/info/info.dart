import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flyapp/const/provider.dart';
import 'package:flyapp/recording/record.dart';
import 'package:provider/provider.dart';
import '../const/colors.dart';

class InfoPas extends StatefulWidget {
  const InfoPas({Key? key}) : super(key: key);

  @override
  State<InfoPas> createState() => _InfoPasState();
}

class _InfoPasState extends State<InfoPas> {
  final phone = TextEditingController();
  final email = TextEditingController();
  final category = TextEditingController();
  final grajdanstvo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final first_name = TextEditingController(
        text: Provider.of<Prov>(context, listen: true).recording['surname']);
    final second_name = TextEditingController(
        text: Provider.of<Prov>(context, listen: true).recording['name']);
    final pasport = TextEditingController(
        text: Provider.of<Prov>(context, listen: true).recording['passport']);
    final srok = TextEditingController(
        text: Provider.of<Prov>(context, listen: true).recording['srok']);
    final data = TextEditingController(
        text: Provider.of<Prov>(context, listen: true).recording['bd']);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                width: 220,
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Автоматическое заполнение паспортных данных',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    showBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        context: context,
                        builder: (context) {
                          return TextRecording();
                        });
                  },
                  child:
                      Image.asset('assets/images/scan.png', fit: BoxFit.cover)),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              context: context,
              builder: (context) {
                return Container(
                    height: 324,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Выбрать пассажира',
                          style: TextStyle(
                              color: blue900,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            setState(() {
                              first_name.text = 'Иванов';
                              second_name.text = 'Иван';
                              phone.text = '79992513215';
                              pasport.text = '9866 1552233';
                              srok.text = '25.12.2035';
                              data.text = '14.05.1989';
                              email.text = 'ivan@mail.ru';
                              category.text = 'Взрослый';
                              grajdanstvo.text = 'Россия';
                            });
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            width: 355,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: blue500)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          'assets/images/ellipse.png',
                                          fit: BoxFit.cover),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Иванов Иван Иванович',
                                      style: TextStyle(
                                          color: blue500,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Image.asset('assets/images/close.png',
                                      fit: BoxFit.cover),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              first_name.text = 'Иванова';
                              second_name.text = 'Мария';
                              pasport.text = '9866 1552233';
                              srok.text = '02.09.2025';
                              data.text = '11.04.2010';
                              email.text = 'maria@mail.ru';
                              category.text = 'Детский';
                              grajdanstvo.text = 'Китай';
                            });
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            width: 355,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: blue500)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          'assets/images/ellipse1.png',
                                          fit: BoxFit.cover),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Иванова Мария Александровна',
                                      style: TextStyle(
                                          color: blue500,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Image.asset('assets/images/close.png',
                                      fit: BoxFit.cover),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )));
              },
            );
          },
          child: Text(
            'Выбрать пассажира',
            style: TextStyle(
                color: blue900, fontSize: 16, fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
        ),
        Image.asset('assets/images/Line10.png', fit: BoxFit.cover),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              'Фамилия',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              '*',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: first_name,
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Имя',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              '*',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: second_name,
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Дата рождения',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              '*',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: data,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () async {
                DateTime? _newDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2025));
                if (_newDate != null) {
                  var year = 0;
                  var now = DateTime.now();
                  var day = now.day - _newDate.day;
                  day >= 0 ? day = 0 : day = -1;
                  var mon = now.month - _newDate.month;
                  var yer = now.year - _newDate.year;
                  mon > 0
                      ? year = yer
                      : mon < 0
                          ? year = yer - 1
                          : year = yer + day;
                  setState(() {
                    year >= 14
                        ? category.text = 'Взрослый'
                        : year <= 2
                            ? category.text = 'Младенец'
                            : category.text = 'Детский';
                    Provider.of<Prov>(context, listen: false).setRecording(
                        '${_newDate.day}.${_newDate.month}.${_newDate.year}',
                        'bd');
                    data.text =
                        '${_newDate.day}.${_newDate.month}.${_newDate.year}';
                  });
                }
              },
              child: Container(
                  padding: EdgeInsets.only(right: 10),
                  child:
                      Image.asset('assets/images/data.png', fit: BoxFit.cover)),
            ),
            hintText: '__.__.____',
            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Телефон',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              '*',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: phone,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            prefixIcon:
                Container(padding: EdgeInsets.only(left: 10), child: Text('+')),
            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Серия и номер паспорта',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              '*',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: pasport,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Срок действия паспорта',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              '*',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: srok,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () async {
                DateTime? _newSrok = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1990),
                    lastDate: DateTime(2050));
                if (_newSrok != null) {
                  setState(() {
                    Provider.of<Prov>(context, listen: false).setRecording(
                        '${_newSrok.day}.${_newSrok.month}.${_newSrok.year}',
                        'srok');
                    srok.text =
                        '${_newSrok.day}.${_newSrok.month}.${_newSrok.year}';
                  });
                }
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child:
                      Image.asset('assets/images/data.png', fit: BoxFit.cover)),
            ),
            hintText: '__.__.____',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 0),
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Выбрать гражданство',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              context: context,
              builder: (context) {
                return Container(
                  height: 400,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'Выбрать пассажира',
                        style: TextStyle(
                            color: blue900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          setState(() {
                            grajdanstvo.text = 'Россия';
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerLeft,
                          width: 355,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: blue500)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset('assets/images/ellipse1.png',
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Россия',
                                style: TextStyle(
                                    color: blue900,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            grajdanstvo.text = 'Узбекистан';
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerLeft,
                          width: 355,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: blue500)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset('assets/images/ellipse1.png',
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Узбекистан',
                                style: TextStyle(
                                    color: blue900,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            grajdanstvo.text = 'Таджикистан';
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerLeft,
                          width: 355,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: blue500)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset('assets/images/ellipse1.png',
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Таджикистан',
                                style: TextStyle(
                                    color: blue900,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            grajdanstvo.text = 'Казахстан';
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerLeft,
                          width: 355,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: blue500)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset('assets/images/ellipse1.png',
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Казахстан',
                                style: TextStyle(
                                    color: blue900,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            grajdanstvo.text = 'Китай';
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerLeft,
                          width: 355,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: blue500)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset('assets/images/ellipse1.png',
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Китай',
                                style: TextStyle(
                                    color: blue900,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
                );
              },
            );
          },
          readOnly: true,
          controller: grajdanstvo,
          decoration: InputDecoration(
            hintText: 'Выбрать гражданство',
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Email',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              '*',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: email,
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Возрастная категория',
              style: TextStyle(
                  color: blue900, fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          readOnly: true,
          controller: category,
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
              borderSide: new BorderSide(),
            ),
          ),
        ),
      ],
    );
  }
}
