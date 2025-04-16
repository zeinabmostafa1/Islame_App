import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/core/utils/assets_manager.dart';

class BottomNavBar extends BottomNavigationBarItem {
  BottomNavBar(String title, Color backgroundColor,
      {Icon? mainIcon = null, String? iconPath})
      : super(
          icon: mainIcon != null
              ? mainIcon
              : ImageIcon(AssetImage(getImagePath(iconPath!))),
          label: title,
          backgroundColor: backgroundColor,
        );
}
