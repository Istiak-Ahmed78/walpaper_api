import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier {
  int pin = 0;
  String message = 'Welcome';
  void doAction() {
    pin += 1;
    message = 'Counting started';
    notifyListeners();
  }
}

class SetMyname extends ChangeNotifier {
  String data = 'My name in null';
  void myRealName() {
    data = 'Istiak';
    notifyListeners();
  }
}
