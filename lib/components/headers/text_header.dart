import 'package:flutter/material.dart';

textHeader(String data) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child:
        Text(data, textAlign: TextAlign.center, style: TextStyle(fontSize: 45)),
  );
}
