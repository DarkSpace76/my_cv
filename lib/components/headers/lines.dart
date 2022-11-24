import 'package:flutter/material.dart';

hLines({double? width}) {
  return Container(
    height: 15,
    margin: const EdgeInsets.symmetric(horizontal: 40),
    width: width,
    decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15)),
  );
}
