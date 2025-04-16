import 'package:flutter/material.dart';
import 'package:islame_app/core/utils/assets_manager.dart';
import 'package:islame_app/core/utils/default_screen.dart';
import 'package:islame_app/ui/home/hadeth/hadeth_tab.dart';
import 'package:islame_app/ui/home/quraan/quraan_tab.dart';
import 'package:islame_app/ui/home/radio/radio_tab.dart';
import 'package:islame_app/ui/home/settings/settings_tab.dart';
import 'package:islame_app/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:islame_app/ui/home/widgets/bottom_nav_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(body:  Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle, style: Theme.of(context).textTheme.titleLarge,),

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
              BottomNavBar(AppLocalizations.of(context)!.quranTab, Theme.of(context).colorScheme.primary,iconPath: 'icon_quran.png',),
              BottomNavBar(AppLocalizations.of(context)!.hadethTab, Theme.of(context).colorScheme.primary,iconPath: 'icon_hadeth.png',),
              BottomNavBar(AppLocalizations.of(context)!.tabehTab, Theme.of(context).colorScheme.primary,iconPath: 'icon_sebha.png',),
              BottomNavBar(AppLocalizations.of(context)!.radioTab,Theme.of(context).colorScheme.primary, iconPath: 'icon_radio.png',),
              BottomNavBar(AppLocalizations.of(context)!.settingsTab, Theme.of(context).colorScheme.primary, mainIcon: Icon(Icons.settings),),

            ],
          )),
    );
  }

  var tabs = [QuraanTab(), HadethTab(),  TasbehTab(), RadioTab(), SettingsTab()];
}
