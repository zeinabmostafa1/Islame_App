import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/core/utils/default_screen.dart';

import 'hadeth_tab.dart';

class HadethDetails extends StatefulWidget {
  static const routeName = 'hadeth';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {

  List <String> verses = [];
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.title,
              style: TextStyle(decoration: TextDecoration.underline)),
        ),
        body: Card(
            elevation: 6,
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SingleChildScrollView(child: Text(hadeth.content, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)),
                  ),
                ),
              ],
            )
            )
      ),
      );
  }
}
