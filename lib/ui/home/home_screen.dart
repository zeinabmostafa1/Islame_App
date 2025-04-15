import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/core/utils/assets_manager.dart';
import 'package:islame_app/core/utils/default_screen.dart';
import 'package:islame_app/ui/home/hadeth/hadeth_tab.dart';
import 'package:islame_app/ui/home/quraan/quraan_tab.dart';
import 'package:islame_app/ui/home/radio/radio_tab.dart';
import 'package:islame_app/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:islame_app/ui/home/widgets/bottom_nav_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(body:  Scaffold(
      appBar: AppBar(
        title: Text('Islame', style: Theme.of(context).textTheme.titleLarge,),
      ),
        body: tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavBar('Quraan', 'icon_quran.png', Theme.of(context).colorScheme.primary),
              BottomNavBar('Hadeth', 'icon_hadeth.png',Theme.of(context).colorScheme.primary),
              BottomNavBar('Sebha', 'icon_sebha.png',Theme.of(context).colorScheme.primary),
              BottomNavBar('Radio', 'icon_radio.png',Theme.of(context).colorScheme.primary),
              // BottomNavBar('Settings',),
            ],
          )),
    );
  }

  var tabs = [QuraanTab(), HadethTab(),  TasbehTab(), RadioTab(),];
}
