import 'package:flutter/material.dart';
import 'package:my_resume/style.dart';

textInformatino({String? title, String? text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? '', style: textStyle(textSize: 16, bold: true)),
        if (text != null)
          Text(text,
              style: textStyle(
                textSize: 16,
              )),
      ],
    ),
  );
}

subHeader(String title) {
  return Text(title,
      style: textStyle(textSize: 18, color: Colors.grey.shade500));
}

header(String title) {
  return Text(title, style: textStyle(textSize: 22, bold: true));
}
