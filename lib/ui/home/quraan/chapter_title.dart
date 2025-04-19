import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/ui/home/quraan/chapter_details/chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  String title;
  int index;
  int versesNumber;

  ChapterTitle(this.title, this.index, this.versesNumber);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetails.routeName,
            arguments: ChapterDetailsArgs(index, title));
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium
                ),
              ),
            ),
            Container(
              width: 2,
              color: MyThemeData.lightPrimaryColor,
            ),
            Expanded(child: Container(
              alignment: Alignment.center,
              child: Text('$versesNumber', style: Theme.of(context).textTheme.bodyMedium,),
            ))
          ],
        ),
      ),
    );
  }
}
