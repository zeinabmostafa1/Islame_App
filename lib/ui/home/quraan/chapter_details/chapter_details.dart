
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/core/utils/default_screen.dart';

class ChapterDetails extends StatefulWidget {
  static const routeName = 'quraan';

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {

  List <String> verses = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;

    readFileData(args.chapterIndex);
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(args.chapterTitle,
              style: TextStyle(decoration: TextDecoration.underline)),
        ),
        body: Card(
            elevation: 6,
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            child: verses.isNotEmpty
                ? ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(verses[index]);
                    },
                    itemCount: verses.length,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/quran_files/${fileIndex + 1}.txt');
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });

  }
}

class ChapterDetailsArgs {
  int chapterIndex;
  String chapterTitle;
  ChapterDetailsArgs(this.chapterIndex, this.chapterTitle);
}
