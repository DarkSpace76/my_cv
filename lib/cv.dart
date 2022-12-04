import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_resume/components/about_me.dart';
import 'package:my_resume/components/feed_box.dart';
import 'package:my_resume/components/prof_information.dart';
import 'package:my_resume/components/user_box.dart';
import 'package:my_resume/const.dart';
import 'dart:math' as math;

class CvPage extends StatefulWidget {
  const CvPage({super.key});

  @override
  State<CvPage> createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
  final ScrollController _customScrollController = ScrollController();
  bool disableScroll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(right: 350, child: CustomPaint(painter: bgTraingle1())),
          Positioned(
              top: -40,
              left: 100,
              child: Transform.rotate(
                  angle: math.pi / 360 * 60,
                  child: CustomPaint(painter: bgTraingle2()))),
          NotificationListener(
            onNotification: (notification) {
              setState(() {
                disableScroll = _customScrollController.position.pixels < 50;
              });

              return false;
            },
            child: CustomScrollView(
              controller: _customScrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: hSliverToBoxAdapter,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    findChildIndexCallback: (key) {
                      print(key);
                    },
                    childCount: 1,
                    (context, index) => Container(
                        height: MediaQuery.of(context).size.height,
                        child:
                            contentPage(context, disableScroll: disableScroll)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget contentPage(BuildContext context, {required bool disableScroll}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            userBox(
                margin: disableScroll
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(top: 10))
          ],
        ),
      ),
      SizedBox(width: 40),
      ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
        child: Expanded(
          child: SingleChildScrollView(
            physics: disableScroll
                ? NeverScrollableScrollPhysics()
                : BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                feedBox(context, child: aboutMe()),
                feedBox(context, child: profInformation()),
                feedBox(context, child: aboutMe()),
                feedBox(context, child: aboutMe()),
              ],
            ),
          ),
        ),
      )
    ],
  );
}

class bgTraingle1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = bgColor2
      ..strokeWidth = 15;
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(400, 0);
    path.lineTo(400, 350);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(bgTraingle1 oldDelegate) => false;
}

class bgTraingle2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = bgColor1
      ..strokeWidth = 15;
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(700, -100);
    path.lineTo(-100, 700);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(bgTraingle2 oldDelegate) => false;
}
