import 'package:flutter/material.dart';
import 'package:islami_c9_sun/ui/hadethDetails/HadethDetailsScreen.dart';
import 'package:islami_c9_sun/ui/home/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            hadeth.title,
            style: TextStyle(
              fontSize: 25,
            ),
          )),
    );
  }
}
