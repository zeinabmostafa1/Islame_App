import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){

            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getSelectedItem(context, 'light'),
                    getUnSelectedItem(context, 'dark')
                  ],
                )
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){

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
                  'dark',
                  style: Theme.of(context).textTheme.titleSmall,
                )),
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
