import 'package:flutter/material.dart';
import 'package:islame_app/core/utils/default_screen.dart';
import 'package:islame_app/ui/home/hadeth/hadeth_tab.dart';
import 'package:islame_app/ui/home/quraan/quraan_tab.dart';
import 'package:islame_app/ui/home/radio/radio_tab.dart';
import 'package:islame_app/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:islame_app/ui/home/widgets/bottom_nav_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
        title: Text(AppLocalizations.of(context)!.appTitle),
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
              BottomNavBar(AppLocalizations.of(context)!.quranTab, 'icon_quran.png'),
              BottomNavBar(AppLocalizations.of(context)!.hadethTab, 'icon_hadeth.png'),
              BottomNavBar(AppLocalizations.of(context)!.tabehTab, 'icon_sebha.png'),
              BottomNavBar(AppLocalizations.of(context)!.radioTab, 'icon_radio.png'),
            ],
          )),
    );
  }

  var tabs = [QuraanTab(), HadethTab(),  TasbehTab(), RadioTab(),];
}
