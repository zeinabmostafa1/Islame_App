import 'package:flutter/material.dart';
import 'package:islame_app/core/utils/default_screen.dart';



class ChapterDetails extends StatelessWidget {
  static const routeName = 'quraan';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    return DefaultScreen(body:
        Scaffold(
    appBar: AppBar(
    title: Text(args.chapterTitle, style: TextStyle(decoration: TextDecoration.underline)),
    ),
          body: Card(
            elevation: 6,
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            child: ListView.builder(itemBuilder: (context, index) {

            },itemCount: 100,),
          ),
    ),
    );
  }
}
class ChapterDetailsArgs{
  int chapterIndex;
  String chapterTitle;
  ChapterDetailsArgs(this.chapterIndex, this.chapterTitle);
}
