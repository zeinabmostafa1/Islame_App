import 'package:flutter/material.dart';
import 'package:islame_app/ui/home/widgets/language_bottom_sheet.dart';
import 'package:islame_app/ui/home/widgets/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 18,
          ),
          Text(
            'language',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: (){
              showLangBottomSheet(context);
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.titleSmall,
                )),
          ),
          SizedBox(height: 18,),
          Text(
            'theme',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                child: Text(
                  'light',
                  style: Theme.of(context).textTheme.titleSmall,
                )),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
     showModalBottomSheet(
       context: context,
        builder: (context) {
          return ThemeBottomSheet();
        },);

        }
        void showLangBottomSheet(BuildContext context) {
     showModalBottomSheet(
       context: context,
        builder: (context) {
          return LanguageBottomSheet();
        },);

        }
}
