import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: Theme.of(context).textTheme.headline6?.copyWith(
                // !!!
                color: Colors.black)),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBlue = Color(0xff73b48);
}
