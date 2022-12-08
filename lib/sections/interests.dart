import 'package:flutter/material.dart';
import 'package:my_resume/components/indent.dart';
import 'package:my_resume/const.dart';
import 'package:my_resume/style.dart';

import '../components/text_widgets.dart';

var inter = [
  'Велосипед',
  'Кофе и чай',
  'Путешествия',
  'Активный отдых',
  'Лежать на диване',
  'Животные',
  'Фильмы'
];
Widget interests() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      header('INTERESTS'),
      verticalPadding(),
      Align(
        alignment: Alignment.center,
        child: Wrap(
          runSpacing: 20,
          spacing: 30,
          alignment: WrapAlignment.start,
          children: List.generate(7, (index) {
            return Container(
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.pedal_bike,
                    color: bgColor1,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    ' ${inter[index]}',
                    style: textStyle(
                        textSize: index == 4 ? 20 : 17, bold: index == 4),
                  ),
                ],
              ),
            );
          }),
        ),
      )
    ],
  );
}
