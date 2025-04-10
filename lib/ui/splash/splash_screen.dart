import 'package:flutter/material.dart';
import 'package:islame_app/core/utils/assets_manager.dart';
import 'package:islame_app/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(getImagePath('splash.png'),
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity ,
      ),
    );
  }
}
