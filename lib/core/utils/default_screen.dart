import 'package:flutter/material.dart';
import 'package:islame_app/ui/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import 'assets_manager.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;
  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();
    return Stack(children: [
      Image.asset(getImagePath(isDark? 'dark_bg.png' : 'default_bg.png')),
      body
    ]);
  }
}
