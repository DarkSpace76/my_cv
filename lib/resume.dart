import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/const.dart';
import 'dart:math' as math;

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
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
            Container(
              constraints: BoxConstraints(
                  maxHeight: 500, minHeight: 500, maxWidth: 300, minWidth: 300),
              margin: disableScroll
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(color: bgColor1),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(360)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Alexandr Syrokvash',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                          fontSize: 15, color: Colors.white.withOpacity(.5)),
                    ),
                  ]),
            ),
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
                // for (int i = 0; i < 30; i++)
                Container(
                  constraints: const BoxConstraints(maxWidth: 800),
                  width: MediaQuery.of(context).size.width * 0.67,
                  margin: EdgeInsets.only(bottom: 25, right: 15),
                  // height: 150,
                  color: cardColor,
                  child: aboutMe(),
                )
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
      ..color = bgColor1
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
      ..color = bgColor2
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

Widget aboutMe() {
  return Padding(
    padding: const EdgeInsets.all(35.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ABOUT ME',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.juliusSansOne().fontFamily),
        ),
        SizedBox(
          height: 35,
        ),
        Text(
            'Hello, I\’m Robert Smith\n\n' +
                'Hello! I\’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: GoogleFonts.juliusSansOne().fontFamily)),
        CupertinoButton(child: Text('share'), onPressed: () {})
      ],
    ),
  );
}


profssionalInformation(){
  return 
}