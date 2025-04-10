import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/ui/home/home_screen.dart';
import 'package:islame_app/ui/home/quraan/chapter_details/chapter_details.dart';
import 'package:islame_app/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_) => SplashScreen(),
        HomeScreen.routeName : (_) => HomeScreen(),
        ChapterDetails.routeName : (_) => ChapterDetails(),
      },
      theme: MyThemeData.lightTheme,
    );
  }
}


