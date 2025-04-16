import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  int index;
  String content;
  VerseContent(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Text(
        textDirection: TextDirection.rtl,
        '$content(${index + 1})',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
