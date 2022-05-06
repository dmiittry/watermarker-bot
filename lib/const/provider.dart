import 'package:flutter/material.dart';

class Prov extends ChangeNotifier {
  var login = false;
  void setLogin(bool) {
    login = bool;
    notifyListeners();
  }

  double appbar = 90;
  void setAppbar(he) {
    appbar = he;
    notifyListeners();
  }

  var language = 'RU';
  void setLang(str) {
    language = str;
    notifyListeners();
  }

  var currentDay = null;
  void setcurrentDay(date) {
    currentDay = date;
    notifyListeners();
  }

  var currentDay1 = null;
  void setcurrentDay1(date) {
    currentDay1 = date;
    notifyListeners();
  }

  var recording = {
    'passport': '',
    'surname': '',
    'name': '',
    'bd': '',
    'srok': '',
  };
  void setRecording(date, id) {
    id == 1000 ? recording = date : recording[id] = date;
    notifyListeners();
  }
}
