import 'package:flutter/material.dart';
import 'package:islami_c9_sun/ui/chapterDetails/ChapterDetailsScreen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;

  ChapterTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsArgs(title, index));
      },
      child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
            ),
          )),
    );
  }
}
