import 'package:flutter/material.dart';
import 'package:my_resume/const.dart';

Widget feedBox(BuildContext context, {required Widget child}) {
  return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      width: MediaQuery.of(context).size.width * 0.67,
      margin: EdgeInsets.only(bottom: 25, right: 15),
      padding: const EdgeInsets.all(35.0),
      // height: 150,
      color: cardColor,
      child: child);
}
