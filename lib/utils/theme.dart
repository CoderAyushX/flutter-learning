import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData  lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.pink,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)));
}
