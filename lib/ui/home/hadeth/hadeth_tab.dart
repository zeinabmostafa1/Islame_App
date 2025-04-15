import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/core/utils/assets_manager.dart';
import 'package:islame_app/ui/home/hadeth/hadeth_title.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});


  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
List<Hadeth> allHadeth = [];
@override
  void initState() {
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Image.asset(getImagePath('hadeth_logo.png')),
        Container(
          color: MyThemeData.lightPrimaryColor,
          width: double.infinity,
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            'Hadeth',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Container(
          color: MyThemeData.lightPrimaryColor,
          width: double.infinity,
          height: 2,
        ),
        Expanded(
            child: allHadeth.isNotEmpty ? ListView.separated(
              separatorBuilder: (context, index) {
                return Container(
                  color: MyThemeData.lightPrimaryColor,
                  width: double.infinity,
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                );
              },
              itemBuilder: (context, index) {
                return HadethTitle(allHadeth[index]);
              },
              itemCount:allHadeth.length,
            ) : Center(child: CircularProgressIndicator(),)
        )
      ],
    );
  }

  void readHadethFile() async{
    String fileContent = await rootBundle.loadString('assets/ahadeth/ahadeth.txt');
    List <String> separatedAhadeth = fileContent.split('#');
    for(int i = 0; i < separatedAhadeth.length; i++){
      String singleHadeth = separatedAhadeth[i];
      List<String> lines = singleHadeth.trim().split('\n');
      String title = lines[0];
      String content = lines.join('');
      Hadeth h = Hadeth(title, content);
      allHadeth.add(h);
    }
    setState(() {

    });
  }
}
 class Hadeth{
  String title;
  String content;
  Hadeth(this.title, this.content);
 }