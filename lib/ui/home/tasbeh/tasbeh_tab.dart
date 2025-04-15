import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/core/utils/assets_manager.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});


  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {

  int index = 0;
  int counter = 0;
  double angle = 0;

  List<String> azkar = ['سبحان الله',
  'الحمد لله',
  'لاإله إلا الله',
  'الله أكبر'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
         children: [
           Image.asset(getImagePath('head_sebha_logo.png')),
           Padding(
             padding: const EdgeInsets.only(top: 76.0),
             child: Transform.rotate(
               angle: angle,
               child: GestureDetector(
                   onTap: () {
                     tasbehCounter();
                   },
                   child: Image.asset(getImagePath('body_sebha_logo.png'))),
             ),
           ),
         ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text('عدد التسبيحات', style: TextStyle(fontSize: 25,),textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: MyThemeData.lightPrimaryColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(14),

              ),
              child: Text('$counter'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: MyThemeData.lightPrimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${azkar[index]}' , style: TextStyle(fontSize: 18),),
                )),
          ),
        ),
      ],
    );
  }
  tasbehCounter(){
    counter++;
    if(counter % 33 == 0){
      index++;
      counter = 0;
    }
    if(index == azkar.length){
      index = 0;
    }
    angle += 360/4;
    setState(() {

    });
  }
}

