import 'package:flutter/material.dart';
import 'package:my_resume/components/indent.dart';
import 'package:my_resume/components/text_widgets.dart';
import 'package:my_resume/const.dart';
import 'package:my_resume/cv.dart';
import 'package:my_resume/style.dart';

Widget workExperianse() {
  int cntWork = 5;
  int cntEducation = 2;
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    header('Work Experience '),
    verticalPadding(height: 50),
    for (int i = 0; i < cntWork; i++)
      _itemExperience(
          colorLeftSide: i < cntWork - 1 ? bgColor1 : Colors.transparent),
    devider(),
    header('EDUCATION'),
    verticalPadding(height: 50),
    for (int i = 0; i < cntEducation; i++)
      _itemExperience(
          colorLeftSide: i < cntEducation - 1 ? bgColor1 : Colors.transparent),
  ]);
}

Widget _itemExperience({Color colorLeftSide = bgColor1}) {
  return Container(
    margin: EdgeInsets.only(left: 200),
    decoration: BoxDecoration(
      border: Border(
        left: BorderSide(width: 3, color: colorLeftSide),
      ),
    ),
    child: Stack(
      children: [
        Transform.translate(
            offset: Offset(-194.5, -15), child: dateRange('2017-2020')),
        Transform.translate(
            offset: Offset(0, -15),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Work1'.toUpperCase(),
                style: textStyle(textSize: 28, bold: true),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              subHeader('Frilance'),
              verticalPadding(height: 10),
              Text(
                'Worked as part of a multi-disciplinary team, carrying out ad-hoc tasks as requested by the IT Manager. Had a specific brief to ensure the websites build for customer’s precisely matched their requirements.developers and marketers.',
                textAlign: TextAlign.justify,
                style: textStyle(),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget dateRange(String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: SizedBox(
      width: 160,
      height: 30,
      child: Stack(
        children: [
          CustomPaint(painter: _CustomBorder(width: 160)),
          Center(child: Text(value, style: textStyle())),
        ],
      ),
    ),
  );
}

class _CustomBorder extends CustomPainter {
  double width;

  _CustomBorder({required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = bgColor1
      ..strokeWidth = 1;
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width + 10, 15);
    path.lineTo(width, 30);
    path.lineTo(0, 30);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
    paint.color = Colors.white;
    canvas.drawCircle(Offset(width + 25, 15), 3, paint);
  }

  @override
  bool shouldRepaint(_CustomBorder oldDelegate) => false;
}
