import 'package:flutter/material.dart';

class Phone extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double scale = 0.4;
    Paint paint = Paint()
      ..color = Colors.amber
      ..strokeWidth = 15;
    Path path = Path();

    path.moveTo(0, 40 * scale);
    path.quadraticBezierTo(0, 0, 40 * scale, 0);
    path.lineTo(160 * scale, 0);
    path.quadraticBezierTo(180 * scale, 0, 180 * scale, 20 * scale);
    path.lineTo(180 * scale, 30 * scale);
    path.quadraticBezierTo(180 * scale, 50 * scale, 200 * scale, 50 * scale);
    path.lineTo(320 * scale, 50 * scale);
    path.quadraticBezierTo(340 * scale, 50 * scale, 340 * scale, 30 * scale);
    path.lineTo(340 * scale, 20 * scale);
    path.quadraticBezierTo(340 * scale, 0, 360 * scale, 0);
    path.lineTo(500 * scale, 0);
    path.quadraticBezierTo(520 * scale, 0, 520 * scale, 40 * scale);
    path.lineTo(520 * scale, 1180 * scale);
    path.quadraticBezierTo(
        520 * scale, 1200 * scale, 500 * scale, 1200 * scale);
    path.lineTo(20 * scale, 1200 * scale);
    path.quadraticBezierTo(0, 1200 * scale, 0, 1180 * scale);
    path.lineTo(0, 20 * scale);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(Phone oldDelegate) => false;
}
