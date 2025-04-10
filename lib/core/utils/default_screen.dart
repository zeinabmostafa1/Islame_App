import 'package:flutter/material.dart';

import 'assets_manager.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;
  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(getImagePath('default_bg.png')),
      body
    ]);
  }
}
