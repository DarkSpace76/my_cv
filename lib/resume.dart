import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              'assets/img/bg.jpeg',
              fit: BoxFit.fill,
              opacity: const AlwaysStoppedAnimation(.4),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: SizedBox(
                  width: 1100,
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 350,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 400,
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                //color: Colors.blue,
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Colors.blue,
                                                      Color.fromARGB(
                                                          255, 65, 162, 242),
                                                    ]),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  topRight: Radius.circular(15),
                                                )),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 130,
                                                  height: 130,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            360),
                                                    child: Container(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                ),
                                                Text(
                                                  'Alrxandr Syrokvash',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Flutter Developer',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.telegram,
                                                      color: Colors.white,
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Icon(
                                                      Icons.gite,
                                                      color: Colors.white,
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Icon(
                                                      Icons.telegram,
                                                      color: Colors.white,
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Icon(
                                                      Icons.gite,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 65, 162, 242),
                                                    Colors.white,
                                                    Colors.white,
                                                  ]),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                              )),
                                          height: 70,
                                          child: CupertinoButton(
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 40),
                                              //color: Colors.amber,
                                              onPressed: () {},
                                              child: Text('Download CV')),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                card(title: 'lang'),
                                SizedBox(
                                  height: 40,
                                ),
                                card(title: 'skills'),
                                SizedBox(
                                  height: 40,
                                ),
                                card(title: 'hobby'),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 4,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: SizedBox(
                                          width: double.infinity,
                                          height: 1120,
                                          child: Center(child: Text('card')))),
                                  SizedBox(height: 10),
                                  /* Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: SizedBox(
                                          width: double.infinity,
                                          height: 300,
                                          child: Center(child: Text('card')))),
                                  SizedBox(height: 10),
                                  Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: SizedBox(
                                          width: double.infinity,
                                          height: 300,
                                          child: Center(child: Text('card')))) */
                                ],
                              )),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
          /*  Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            left: 0,
            child: CustomPaint(
              painter: CurvePainter(),
            ),
          ) */
        ],
      ),
    );
  }
}

card({String? title}) {
  return Card(
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: SizedBox(
      width: double.infinity,
      height: 150,
      child: Column(children: [
        Transform.translate(
          offset: Offset(0, -20),
          child: Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(255, 65, 162, 242), Colors.blue]),
                borderRadius: BorderRadius.circular(180)),
            child: Center(
              child: Text(
                title ?? '',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    ),
  );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(0, 0),
        Offset(size.width, size.height),
        [
          Color.fromARGB(255, 173, 131, 6),
          Colors.amber,
        ],
      );

    var path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width / 2, size.height / 2, size.width, 0);
    path.lineTo(size.width - 4, 0);
    path.quadraticBezierTo(size.width / 2, (size.height / 2) - 4, 4, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
