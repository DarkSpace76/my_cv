import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/style.dart';

Widget profInformation() {
  return Column(children: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _personalInformation()),
        Expanded(child: _languages()),
      ],
    ),
    Row(),
    Row(),
  ]);
}

Widget _personalInformation() {
  return _column(
    headerTitle: 'personal information',
    children: [
      _textInformatino(title: 'Full Nmae', text: 'Alexandr Syrokvash'),
      _textInformatino(title: 'D.O.B', text: '269512'),
      _textInformatino(title: 'Adress', text: 'Minsk'),
      _textInformatino(title: 'Email', text: 'alexdev@gmail.com'),
      _textInformatino(title: 'Phone', text: '+375 (25) 587-98-99'),
      _textInformatino(title: 'FREELANCE', text: 'till March 25, 2020'),
    ],
  );
}

Widget _languages() {
  return _column(
    headerTitle: 'languages',
    children: [],
  );
}

Widget _column({required String headerTitle, List<Widget>? children}) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(headerTitle),
        const SizedBox(height: 25),
        for (var e in children!) e
      ]);
}

_textInformatino({String? title, String? text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? '', style: textStyle(textSize: 16, bold: true)),
        Text(text ?? '',
            style: textStyle(
              textSize: 16,
            )),
      ],
    ),
  );
}

_header(String title) {
  return Text(title,
      style: textStyle(textSize: 18, color: Colors.grey.shade500));
}
