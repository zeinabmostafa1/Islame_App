import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/core/utils/assets_manager.dart';

class BottomNavBar extends BottomNavigationBarItem {
  BottomNavBar(String title, String iconPath)
      : super(
            icon: ImageIcon(AssetImage(getImagePath(iconPath))),
            label: title,
            backgroundColor: MyThemeData.lightPrimaryColor,
  );
}
