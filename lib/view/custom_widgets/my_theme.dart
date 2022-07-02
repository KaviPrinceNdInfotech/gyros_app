import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color loginbuttonColor = Color(0xff9bbb4c);
  static Color signUpButtonColor = Colors.grey.shade400;
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        canvasColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Colors.white,
            onPrimary: Colors.black87,
            secondary: Colors.black87,
            onSecondary: Colors.black,
            error: Colors.red,
            onError: Colors.red,
            background: Colors.black,
            onBackground: Colors.black,
            surface: Colors.cyan.shade500,
            onSurface: Colors.cyan),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        canvasColor: Colors.black,
        colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.white,
            onPrimary: Colors.white,
            secondary: Colors.black87,
            onSecondary: Colors.black,
            error: Colors.red,
            onError: Colors.red,
            background: Colors.black,
            onBackground: Colors.black,
            surface: Colors.cyan.shade500,
            onSurface: Colors.cyan),
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}
