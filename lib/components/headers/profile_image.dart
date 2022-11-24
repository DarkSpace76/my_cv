import 'package:flutter/material.dart';

profileImage({String? path}) {
  return SizedBox(
      height: 130,
      width: 130,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(360),
        child: Container(color: Colors.amber),
      ));
}
