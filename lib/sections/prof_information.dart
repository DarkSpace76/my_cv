import 'package:flutter/material.dart';
import 'package:my_resume/components/indent.dart';
import 'package:my_resume/components/text_widgets.dart';
import 'package:my_resume/const.dart';

Widget profInformation() {
  return Column(children: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _personalInformation()),
        horizontalPadding(),
        Expanded(child: _languages()),
      ],
    ),
    devider(),
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _profesionalSkills()),
        horizontalPadding(),
        Expanded(child: _profesionalSkills()),
      ],
    ),
  ]);
}

Widget _personalInformation() {
  return _column(
    headerTitle: 'personal information',
    children: [
      textInformatino(title: 'Full Nmae', text: 'Alexandr Syrokvash'),
      textInformatino(title: 'D.O.B', text: '269512'),
      textInformatino(title: 'Adress', text: 'Minsk'),
      textInformatino(title: 'Email', text: 'alexdev@gmail.com'),
      textInformatino(title: 'Phone', text: '+375 (25) 587-98-99'),
      textInformatino(title: 'FREELANCE', text: 'till March 25, 2020'),
    ],
  );
}

Widget _languages() {
  return _column(
    headerTitle: 'languages',
    children: [
      Column(
        children: [
          _languagesSkill(langName: 'English', profLevel: 40),
          _languagesSkill(langName: 'Spanish', profLevel: 76),
          _languagesSkill(langName: 'Russian', profLevel: 16),
        ],
      ),
    ],
  );
}

Widget _profesionalSkills() {
  return _column(
    headerTitle: 'Professional Skills',
    children: [
      Column(
        children: [
          Column(
            children: [
              textInformatino(title: 'JavaScript', text: '40%'),
              LinearProgressIndicator(
                value: 0.4,
                backgroundColor: bgColor2.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(bgColor1),
              ),
              textInformatino(title: 'Java', text: '50%'),
              LinearProgressIndicator(
                value: 0.5,
                backgroundColor: bgColor2.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(bgColor1),
              ),
              textInformatino(title: 'Dart', text: '80%'),
              LinearProgressIndicator(
                value: 0.8,
                backgroundColor: bgColor2.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(bgColor1),
              ),
              textInformatino(title: ' MySQL', text: '70%'),
              LinearProgressIndicator(
                value: 0.7,
                backgroundColor: bgColor2.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(bgColor1),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget _column({required String headerTitle, List<Widget>? children}) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subHeader(headerTitle),
        const SizedBox(height: 25),
        for (var e in children!) e
      ]);
}

_languagesSkill({required String langName, required double profLevel}) {
  int fillCount = (profLevel / 10).round();

  return Column(children: [
    textInformatino(title: langName),
    Row(children: [for (int i = 0; i < 10; i++) _point(i < fillCount)]),
  ]);
}

Widget _point(bool fill) {
  return Container(
    height: 15,
    width: 15,
    margin: const EdgeInsets.only(right: 10, top: 8, bottom: 8),
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: bgColor1),
      color: fill ? bgColor1 : null,
      borderRadius: BorderRadius.circular(360),
    ),
  );
}
