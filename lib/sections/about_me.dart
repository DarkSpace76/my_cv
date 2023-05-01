import 'package:flutter/material.dart';
import 'package:my_resume/style.dart';

import '../components/text_widgets.dart';

Widget aboutMe() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      header('Aout Me'),
      SizedBox(
        height: 35,
      ),
      Text(
          'Hello, I\’m Alex Dev\n\n' +
              'Hello! I\’m Alex Dev. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.',
          textAlign: TextAlign.justify,
          style: textStyle(textSize: 20))
    ],
  );
}
