
import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/ui/home/hadeth/hadeth_details.dart';
import 'package:islame_app/ui/home/home_screen.dart';
import 'package:islame_app/ui/home/quraan/chapter_details/chapter_details.dart';
import 'package:islame_app/ui/providers/theme_provider.dart';
import 'package:islame_app/ui/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'ui/providers/locale_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => LocaleProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetails.routeName: (_) => ChapterDetails(),
        HadethDetails.routeName: (_) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLocale),
    );
  }
}
