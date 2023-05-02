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
  double offsetUserBox = 15;
  double paddingTop = 150;
  late Tween<double> animate = Tween<double>(begin: 0, end: offsetUserBox);

  final GlobalKey _key = GlobalKey();
  final ScrollController _controller = ScrollController();
  bool _isStuck = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  void _afterLayout(_) {
    _controller.addListener(
      () {
        final RenderBox renderBox =
            _key.currentContext?.findRenderObject() as RenderBox;

        final Offset offset = renderBox.localToGlobal(Offset.zero);
        final double startY = offset.dy;

        setState(() {
          if (!_isStuck &&
              _controller.position.pixels > paddingTop - offsetUserBox) {
            _isStuck = true;
          } else {
            if (_controller.position.pixels < paddingTop - offsetUserBox) {
              _isStuck = false;
            }
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
            controller: _controller,
            child: Padding(
              padding: EdgeInsets.only(top: paddingTop),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [if (!_isStuck) userBox(key: _key)],
                    ),
                  ),
                  const SizedBox(width: 40),
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
                  ),
                ],
              ),
            )),
        if (_isStuck)
          Padding(
            padding: EdgeInsets.only(top: offsetUserBox),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [userBox(key: _key)],
                )),
          )
      ],
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
