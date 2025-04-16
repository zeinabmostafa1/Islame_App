import 'package:flutter/material.dart';
import 'package:islame_app/ui/home/hadeth/hadeth_details.dart';

import 'hadeth_tab.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName,
            arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium
      ),
    );
  }
}
