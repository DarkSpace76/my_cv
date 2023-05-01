import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/const.dart';
import 'package:my_resume/sections/portfolio/phone_template.dart';

void viewProjcet(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: bgColor,
          content: _Content(),
        );
      });
}

class _Content extends StatefulWidget {
  const _Content({super.key});

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 600, maxWidth: 1200),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Row(
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/phone.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: PageView.builder(
                    itemCount: 15,
                    physics: BouncingScrollPhysics(),
                    controller: PageController(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, i) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            borderRadius: BorderRadius.circular(15)),
                      );
                    }),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
