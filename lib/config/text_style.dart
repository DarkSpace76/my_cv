import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(
        {double? textSize = 15,
        Color color = Colors.white,
        bool bold = false}) =>
    TextStyle(
        fontSize: textSize,
        color: color,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        fontFamily: GoogleFonts.juliusSansOne().fontFamily);
