import 'package:flutter/material.dart';
import 'package:islame_app/ui/providers/locale_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var localeProvider = Provider.of<LocaleProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              localeProvider.changeLocale('en');
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                child:
                localeProvider.currentLocale == 'en' ?
                getSelectedItem(context, 'English') :
                getUnSelectedItem(context, 'English'),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              localeProvider.changeLocale('ar');
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                child:
                localeProvider.currentLocale == 'ar' ?
                getSelectedItem(context, 'العربية') : getUnSelectedItem(context, 'العربية'),

                ),
          ),
        ],
      ),
    );
  }
  Widget getSelectedItem(BuildContext context, String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Icon(Icons.check)
      ],
    );
  }
  Widget getUnSelectedItem(BuildContext context, String text){
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall,
      // Icon(Icons.check)
    );
  }
}