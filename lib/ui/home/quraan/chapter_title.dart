import 'package:flutter/material.dart';
import 'package:islame_app/ui/home/quraan/chapter_details/chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  String title;
  int index;

  ChapterTitle(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetails.routeName,
            arguments: ChapterDetailsArgs(index, title));
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium
      ),
    );
  }
}
