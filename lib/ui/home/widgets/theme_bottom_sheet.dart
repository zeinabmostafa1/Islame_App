import 'package:flutter/material.dart';
import 'package:islame_app/core/theme/my_theme.dart';
import 'package:islame_app/ui/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.light);
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                child:
                themeProvider.isDarkEnabled() ?
                getUnSelectedItem(context, AppLocalizations.of(context)!.light) : getSelectedItem(context, AppLocalizations.of(context)!.light),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.dark);
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                child: themeProvider.isDarkEnabled() ? getSelectedItem(context, AppLocalizations.of(context)!.dark) : getUnSelectedItem(context, AppLocalizations.of(context)!.dark)),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Icon(Icons.check, color: Theme.of(context).colorScheme.secondary,)
      ],
    );
  }

  Widget getUnSelectedItem(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
