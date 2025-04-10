import 'package:flutter/material.dart';

class MyThemeData {

  static final Color lightPrimaryColor = Color(0xffB7935F);

  static final ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimaryColor,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        size: 32,
      )
    ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xffB7935F),
          onSecondary: Colors.black));
}
