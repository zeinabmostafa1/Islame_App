import 'package:flutter/material.dart';

class MyThemeData {
  static final Color lightPrimaryColor = Color(0xffB7935F);
  static final Color darkPrimaryColor = Color(0xff141A2E);
  static final Color darkSecondaryColor = Color(0xffFACC1D);

  static final ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Messiri'),
          titleMedium: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: 'Messiri'),
          bodyMedium: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w500,
             )),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightPrimaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 32,
          )),
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
      cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: null,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xffB7935F),
          onSecondary: Colors.black));

  static final ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Messiri'),
          titleMedium: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Messiri'),
          bodyMedium: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkPrimaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: darkSecondaryColor,
          selectedIconTheme: IconThemeData(
            size: 32,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
      cardTheme: CardTheme(
        color: darkPrimaryColor,
        surfaceTintColor: null,
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimaryColor),
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimaryColor,
          primary: darkPrimaryColor,
          onPrimary: Colors.white,
          secondary: darkSecondaryColor,
          onSecondary: Colors.black));
}
