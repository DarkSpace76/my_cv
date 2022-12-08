import 'dart:ui';

import 'package:flutter/material.dart';

Widget userBox({EdgeInsets? padding}) {
  return Padding(
    padding: padding ?? EdgeInsets.zero,
    child: ClipRect(
        child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        constraints: BoxConstraints(
            maxHeight: 500, minHeight: 500, maxWidth: 300, minWidth: 300),
        decoration: BoxDecoration(color: Colors.grey.shade700.withOpacity(0.2)),
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
    )),
  );
}
