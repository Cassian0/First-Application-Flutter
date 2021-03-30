import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController(); //padrao singletton para o uso de apenas AppController.instance

  bool isDartTheme = false;

  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
