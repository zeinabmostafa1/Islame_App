import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme (ThemeMode newTheme){
    currentTheme = newTheme;
    notifyListeners();
}

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }
}