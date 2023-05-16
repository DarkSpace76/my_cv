import 'package:flutter/material.dart';
import 'package:my_resume/utils/const.dart';

horizontalPadding({double width = 30}) {
  return SizedBox(width: width);
}

verticalPadding({double height = 30}) {
  return SizedBox(height: height);
}

devider() {
  return Container(
    width: double.infinity,
    height: 1,
    padding: const EdgeInsets.symmetric(horizontal: 50),
    margin: const EdgeInsets.symmetric(vertical: 30),
    color: bgColor2.withOpacity(0.2),
  );
}
