import 'package:flutter/material.dart';
import 'package:flyapp/appbar.dart';
import 'package:flyapp/const/colors.dart';
import 'package:flyapp/const/provider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var title_kuda = 'Куда';
  var title_otkuda = 'Откуда';
  var title_valuta = 'Валюта';
  final kuda = TextEditingController();
  final otkuda = TextEditingController();
  var dataPrileta = '';
  var dataVyleta = '';
  var _currentDate = null;
  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );
  void EventAdd() {
    Provider.of<Prov>(context, listen: false).setAppbar(150.0);
    for (int i = 1; i < 30; i++) {
      var date = DateTime.now();
      // print("${date.day}.${date.month + i}.${date.year}");
      _markedDateMap.add(
        DateTime(2022, 5, i, 00, 00, 00, 000),
        Event(
          date: DateTime(2022, 6, 26),
          icon: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FittedBox(
                child: Text(
                  '${4 + i} ${895 + i} ₽',
                  style: TextStyle(
                      color:
                          _currentDate == DateTime(2022, 5, i, 00, 00, 00, 000)
                              ? Colors.white
                              : grey200,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          )),
        ),
      );
    }
  }

  @override
  void initState() {
    EventAdd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0), child: MyAppBar()),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            color: bgColor,
            child: Column(
              children: [
                // ПОИСК БИЛЕТОВ
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: Text(
                      'Поиск билетов',
                      style: TextStyle(
                          color: blue900,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )),
                // ОТКУДА и КУДА СТЭК
                Stack(
                  children: [
                    Column(
                      children: [
                        // ОТКУДА
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
                                return SingleChildScrollView(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/range.png',
                                            fit: BoxFit.cover),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 15),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Откуда',
                                                      style: TextStyle(
                                                          color: blue900,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextFormField(
                                                    controller: kuda,
                                                    decoration: InputDecoration(
                                                      label: Container(
                                                        width: 100,
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                                'assets/images/Search.png',
                                                                fit: BoxFit
                                                                    .cover),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                              'Поиск',
                                                              style: TextStyle(
                                                                  color:
                                                                      grey200,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      fillColor: Colors.white,
                                                      border:
                                                          new OutlineInputBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5),
                                                        borderSide:
                                                            new BorderSide(),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  ExpansionTile(
                                                    collapsedTextColor: blue900,
                                                    textColor: Colors.white,
                                                    backgroundColor: blue500,
                                                    title: Text(
                                                      'Москва',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    children: <Widget>[
                                                      ListTile(
                                                          leading: title_otkuda ==
                                                                  'Москва - любой'
                                                              ? Icon(
                                                                  Icons
                                                                      .check_box,
                                                                  color:
                                                                      Colors
                                                                          .white,
                                                                  size: 20)
                                                              : Icon(
                                                                  Icons
                                                                      .check_box_outline_blank,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 20),
                                                          onTap: () {
                                                            setState(() {
                                                              title_otkuda =
                                                                  'Москва - любой';
                                                              Navigator.pop(
                                                                  context);
                                                            });
                                                          },
                                                          title: Text(
                                                            'Москва - любой',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          )),
                                                      ListTile(
                                                          leading: title_otkuda ==
                                                                  'Москва - SVO'
                                                              ? Icon(
                                                                  Icons
                                                                      .check_box,
                                                                  color:
                                                                      Colors
                                                                          .white,
                                                                  size: 20)
                                                              : Icon(
                                                                  Icons
                                                                      .check_box_outline_blank,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 20),
                                                          onTap: () {
                                                            setState(() {
                                                              title_otkuda =
                                                                  'Москва - SVO';
                                                              Navigator.pop(
                                                                  context);
                                                            });
                                                          },
                                                          title: Text(
                                                            'Москва - SVO',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          )),
                                                      ListTile(
                                                          leading: title_otkuda ==
                                                                  'Москва - VKO'
                                                              ? Icon(
                                                                  Icons
                                                                      .check_box,
                                                                  color:
                                                                      Colors
                                                                          .white,
                                                                  size: 20)
                                                              : Icon(
                                                                  Icons
                                                                      .check_box_outline_blank,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 20),
                                                          onTap: () {
                                                            setState(() {
                                                              title_otkuda =
                                                                  'Москва - VKO';
                                                              Navigator.pop(
                                                                  context);
                                                            });
                                                          },
                                                          title: Text(
                                                            'Москва - VKO',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          )),
                                                      ListTile(
                                                          leading: title_otkuda ==
                                                                  'Москва - DME'
                                                              ? Icon(
                                                                  Icons
                                                                      .check_box,
                                                                  color:
                                                                      Colors
                                                                          .white,
                                                                  size: 20)
                                                              : Icon(
                                                                  Icons
                                                                      .check_box_outline_blank,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 20),
                                                          onTap: () {
                                                            setState(() {
                                                              title_otkuda =
                                                                  'Москва - DME';
                                                              Navigator.pop(
                                                                  context);
                                                            });
                                                          },
                                                          title: Text(
                                                            'Москва - DME',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        title_otkuda =
                                                            'Санкт-Петербург';
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 17),
                                                      color: title_otkuda ==
                                                              'Санкт-Петербург'
                                                          ? blue500
                                                          : Colors.white,
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Санкт-Петербург',
                                                            style: TextStyle(
                                                                color: title_otkuda ==
                                                                        'Санкт-Петербург'
                                                                    ? Colors
                                                                        .white
                                                                    : blue900,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        title_otkuda =
                                                            'Новосибирск';
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 17),
                                                      color: title_otkuda ==
                                                              'Новосибирск'
                                                          ? blue500
                                                          : Colors.white,
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Новосибирск',
                                                            style: TextStyle(
                                                                color: title_otkuda ==
                                                                        'Новосибирск'
                                                                    ? Colors
                                                                        .white
                                                                    : blue900,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: 355,
                            height: 61,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: borderColor)),
                            child: Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(9),
                                    child: Image.asset(
                                        'assets/images/vylet.png',
                                        fit: BoxFit.cover)),
                                Text(
                                  '$title_otkuda',
                                  style: TextStyle(
                                      color: blue900,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // КУДА
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
                                                  topRight:
                                                      Radius.circular(30))),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Куда',
                                                    style: TextStyle(
                                                        color: blue900,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                TextFormField(
                                                  controller: kuda,
                                                  decoration: InputDecoration(
                                                    label: Container(
                                                      width: 100,
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                              'assets/images/Search.png',
                                                              fit:
                                                                  BoxFit.cover),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Поиск',
                                                            style: TextStyle(
                                                                color: grey200,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    fillColor: Colors.white,
                                                    border:
                                                        new OutlineInputBorder(
                                                      borderRadius:
                                                          new BorderRadius
                                                              .circular(5),
                                                      borderSide:
                                                          new BorderSide(),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      title_kuda = 'Москва';
                                                      Navigator.pop(context);
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Москва',
                                                        style: TextStyle(
                                                            color: blue900,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      title_kuda =
                                                          'Санкт-Петербург';
                                                      Navigator.pop(context);
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Санкт-Петербург',
                                                        style: TextStyle(
                                                            color: blue900,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      title_kuda =
                                                          'Новосибирск';
                                                      Navigator.pop(context);
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Новосибирск',
                                                        style: TextStyle(
                                                            color: blue900,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
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
                            width: 355,
                            height: 61,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: borderColor)),
                            child: Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(9),
                                    child: Image.asset(
                                        'assets/images/prilet.png',
                                        fit: BoxFit.cover)),
                                Text(
                                  '$title_kuda',
                                  style: TextStyle(
                                      color: blue900,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 10,
                      bottom: 52,
                      child: InkWell(
                        onTap: () {
                          var newKuda = title_kuda;
                          var newOtkuda = title_otkuda;
                          setState(() {
                            title_kuda = newOtkuda;
                            title_otkuda = newKuda;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: borderColor)),
                          child: Container(
                              child: Image.asset('assets/images/change.png',
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                  clipBehavior: Clip.none,
                ),
                SizedBox(
                  height: 10,
                ),
                // ДАТА ВЫЛЕТА И ОБРАТНО
                Container(
                  alignment: Alignment.center,
                  height: 61,
                  width: 355,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      child: Column(
                                        children: [
                                          CalendarCarousel<Event>(
                                            weekdayTextStyle:
                                                TextStyle(color: grey200),
                                            locale: 'ru',
                                            weekDayMargin:
                                                EdgeInsets.only(bottom: 0),
                                            dayPadding: 0.0,
                                            daysTextStyle: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            todayTextStyle: TextStyle(
                                                color: blue500,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            nextMonthDayBorderColor:
                                                Colors.transparent,
                                            prevMonthDayBorderColor:
                                                Colors.transparent,
                                            thisMonthDayBorderColor:
                                                Colors.transparent,
                                            todayBorderColor:
                                                Colors.transparent,
                                            todayButtonColor:
                                                Colors.transparent,
                                            onDayPressed: (date, events) {
                                              setState(() {
                                                _currentDate = date;
                                                Provider.of<Prov>(context,
                                                        listen: false)
                                                    .setcurrentDay(date);
                                                _markedDateMap.clear();
                                                EventAdd();
                                                dataVyleta =
                                                    DateFormat('dd.MM.yyyy')
                                                        .format(date);
                                              });
                                            },
                                            selectedDateTime: Provider.of<Prov>(
                                                    context,
                                                    listen: true)
                                                .currentDay,
                                            selectedDayBorderColor:
                                                Colors.transparent,
                                            selectedDayButtonColor: blue500,
                                            selectedDayTextStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            weekendTextStyle: TextStyle(
                                              color: grey200,
                                            ),
                                            headerTextStyle: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            weekFormat: false,
                                            markedDatesMap: _markedDateMap,
                                            height: 450.0,
                                            showIconBehindDayText: true,
                                            daysHaveCircularBorder: false,
                                            markedDateShowIcon: true,
                                            markedDateIconMaxShown: 2,
                                            markedDateIconBuilder: (event) {
                                              return event.icon ??
                                                  Icon(Icons.help_outline);
                                            },
                                            markedDateMoreShowTotal:
                                                true, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 355,
                                              height: 61,
                                              decoration: BoxDecoration(
                                                color: blue500,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                'Выбрать дату',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: 170,
                          height: 61,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: borderColor)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Дата вылета',
                                style: TextStyle(
                                    color: blue900,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          'assets/images/data.png',
                                          fit: BoxFit.cover)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    dataVyleta,
                                    style: TextStyle(
                                        color: blue900,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      child: Column(
                                        children: [
                                          CalendarCarousel<Event>(
                                            weekdayTextStyle:
                                                TextStyle(color: grey200),
                                            locale: 'ru',
                                            weekDayMargin:
                                                EdgeInsets.only(bottom: 0),
                                            dayPadding: 0.0,
                                            daysTextStyle: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            todayTextStyle: TextStyle(
                                                color: blue500,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            nextMonthDayBorderColor:
                                                Colors.transparent,
                                            prevMonthDayBorderColor:
                                                Colors.transparent,
                                            thisMonthDayBorderColor:
                                                Colors.transparent,
                                            todayBorderColor:
                                                Colors.transparent,
                                            todayButtonColor:
                                                Colors.transparent,
                                            onDayPressed: (date, events) {
                                              setState(() {
                                                _currentDate = date;
                                                Provider.of<Prov>(context,
                                                        listen: false)
                                                    .setcurrentDay1(date);
                                                _markedDateMap.clear();
                                                EventAdd();
                                                dataPrileta =
                                                    DateFormat('dd.MM.yyyy')
                                                        .format(date);
                                              });
                                            },
                                            selectedDateTime: Provider.of<Prov>(
                                                    context,
                                                    listen: true)
                                                .currentDay1,
                                            customGridViewPhysics:
                                                NeverScrollableScrollPhysics(),
                                            selectedDayBorderColor:
                                                Colors.transparent,
                                            selectedDayButtonColor: blue500,
                                            selectedDayTextStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            weekendTextStyle: TextStyle(
                                              color: grey200,
                                            ),
                                            headerTextStyle: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            weekFormat: false,
                                            markedDatesMap: _markedDateMap,
                                            height: 450.0,
                                            showIconBehindDayText: true,
                                            daysHaveCircularBorder: false,
                                            markedDateShowIcon: true,
                                            markedDateIconMaxShown: 2,
                                            markedDateIconBuilder: (event) {
                                              return event.icon ??
                                                  Icon(Icons.help_outline);
                                            },
                                            markedDateMoreShowTotal:
                                                true, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 355,
                                              height: 61,
                                              decoration: BoxDecoration(
                                                color: blue500,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                'Выбрать дату',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: 170,
                          height: 61,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: borderColor)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Обратно',
                                style: TextStyle(
                                    color: blue900,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          'assets/images/data.png',
                                          fit: BoxFit.cover)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    dataPrileta,
                                    style: TextStyle(
                                        color: blue900,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // ВАЛЮТА
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
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Выбрать валюту',
                                            style: TextStyle(
                                                color: blue900,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 35,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              title_valuta = 'Рубль';
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/RU.png',
                                                  fit: BoxFit.cover),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Рубль',
                                                style: TextStyle(
                                                    color: blue900,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              title_valuta = 'Доллар';
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/US.png',
                                                  fit: BoxFit.cover),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Доллар',
                                                style: TextStyle(
                                                    color: blue900,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              title_valuta = 'Сум';
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/UZ.png',
                                                  fit: BoxFit.cover),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Сум',
                                                style: TextStyle(
                                                    color: blue900,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              title_valuta = 'Сомони';
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/TJ.png',
                                                  fit: BoxFit.cover),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Сомони',
                                                style: TextStyle(
                                                    color: blue900,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              title_valuta = 'Юань';
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/CN.png',
                                                  fit: BoxFit.cover),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Юань',
                                                style: TextStyle(
                                                    color: blue900,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
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
                    width: 355,
                    height: 61,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: borderColor)),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(9),
                            child: Image.asset('assets/images/valuta.png',
                                fit: BoxFit.cover)),
                        Text(
                          '$title_valuta',
                          style: TextStyle(
                              color: blue900,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                // Найти билет
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Column(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Image.asset('assets/images/img.png',
                                        fit: BoxFit.cover),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      'По вашему запросу ничего не найдено',
                                      style: TextStyle(
                                          color: blue900,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Provider.of<Prov>(context,
                                                listen: false)
                                            .setAppbar(90.0);
                                        Navigator.pop(context);
                                        Navigator.pushNamed(context, '/list');
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 355,
                                        height: 61,
                                        decoration: BoxDecoration(
                                          color: blue500,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          'Изменить параметры',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    )
                                  ],
                                )),
                              ),
                            ],
                          );
                        });
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
                      'Найти билеты',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
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
              Container(
                  child: Image.asset('assets/images/bilet.png',
                      fit: BoxFit.cover)),
              Container(
                  child: Image.asset('assets/images/Line9.png',
                      fit: BoxFit.cover)),
              InkWell(
                onTap: () {
                  Provider.of<Prov>(context, listen: false).setAppbar(90.0);
                  Provider.of<Prov>(context, listen: false).login == false
                      ? Navigator.pushNamed(context, '/register')
                      : Navigator.pushNamed(context, '/profile');
                },
                child: Container(
                    child: Image.asset('assets/images/user.png',
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ));
  }
}
