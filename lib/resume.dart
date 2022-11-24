import 'package:flutter/material.dart';
import 'package:my_resume/components/headers/lines.dart';
import 'package:my_resume/components/headers/profile_image.dart';
import 'package:my_resume/components/headers/text_header.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          //width: 400,
          child: Column(
        children: [
          _headerContent(),
          _bodyContent(),
        ],
      )),
    );
  }
}

_headerContent() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        hLines(width: 200),
        profileImage(),
        Expanded(child: textHeader('Alexandr Syrokvash')),
        hLines(width: 200),
      ],
    ),
  );
}

_bodyContent() {
  return Expanded(
    child: Row(children: [
      Expanded(
          flex: 4,
          child: Container(
            color: Colors.green,
          )),
      Expanded(
          flex: 2,
          child: Container(
            color: Colors.amber,
          ))
    ]),
  );
}
