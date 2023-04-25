import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/sections/about_me.dart';
import 'package:my_resume/components/feed_box.dart';
import 'package:my_resume/sections/interests.dart';
import 'package:my_resume/sections/portfolio/portfolio.dart';
import 'package:my_resume/sections/prof_information.dart';
import 'package:my_resume/const.dart';
import 'dart:math' as math;

import 'package:my_resume/sections/user_box.dart';
import 'package:my_resume/sections/work_experiance.dart';

GlobalKey key = GlobalKey();

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
                  child: CustomPaint(painter: bgTraingle2(color: bgColor1)))),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 2,
              left: MediaQuery.of(context).size.width / 3,
              child: Transform.rotate(
                  angle: math.pi / 360 * 180,
                  child: CustomPaint(painter: bgTraingle2(color: bgColor2)))),
          ContentPage()
        ],
      ),
    );
  }
}

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  ScrollController scrollController = ScrollController();
  double offsetUserBox = 0;

  @override
  void initState() {
    scrollController.addListener(() {
      print(scrollController.position.pixels);
    });
    super.initState();
  }

  void _scroolPosition(PointerSignalEvent signal) {
    double offset = 25;
    double currentPos = scrollController.position.pixels;
    double maxPosition = scrollController.position.maxScrollExtent;
    double minPosition = scrollController.position.minScrollExtent;

    setState(() {
      RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
      Offset position =
          box.localToGlobal(Offset.zero); //this is global position
      if (signal is PointerScrollEvent) {
        /*  if (signal.scrollDelta.dy < 0 && currentPos > minPosition) {
          scrollController.jumpTo(currentPos - offset);
        } else if (signal.scrollDelta.dy > 0 && currentPos < maxPosition) {
          scrollController.jumpTo(currentPos + offset);
        } */

        if (scrollController.position.pixels > 0 &&
            scrollController.position.pixels + offset >= 100 &&
            signal.scrollDelta.dy > 0 &&
            currentPos < maxPosition) {
          offsetUserBox += offset;
        }
        if (offsetUserBox > 0 && signal.scrollDelta.dy < 0) {
          offsetUserBox -= offset;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      // onPointerSignal: _scroolPosition,
      child: SingleChildScrollView(
        controller: scrollController,
        // physics: NeverScrollableScrollPhysics(),
        child: Padding(
          key: key,
          padding: const EdgeInsets.only(top: 100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Transform.translate(
              //offset: Offset(0, offsetUserBox),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [userBox()],
                ),
                // ),
              ),
              SizedBox(width: 40),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    feedBox(context, child: aboutMe()),
                    feedBox(context, child: profInformation()),
                    feedBox(context, child: workExperianse()),
                    feedBox(context, child: portfolio()),
                    feedBox(context, child: interests())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
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
  Color color;
  bgTraingle2({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
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
