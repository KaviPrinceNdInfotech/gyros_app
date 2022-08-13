import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color loginbuttonColor = Color(0xff9bbb4c);
  static Color signUpButtonColor = Colors.grey.shade400;
  // static Color loginPageBoxColor = Color(0xffccccff);
  static Color loginPageBoxColor = Colors.grey.shade300;
  static Color ContainerUnSelectedColor = Color(0xffeff8f5);
  static Color ThemeColors = Color(0xff27ae61);
  static double defaultPading = 15.0;

  static LinearGradient gradient1 = const LinearGradient(
    colors: <Color>[
      Color(0xff2cc487),
      Color(0xff2cc499),
      Color(0xff3ad286),
      Color(0xff6ec481),
      Color(0xff37c97e),
      Color(0xff47bd82),
      Color(0xff209c87),
      Color(0xff0b806b),
    ],
    tileMode: TileMode.mirror,
    begin: Alignment.topLeft,
    end: Alignment(0.9, 1),
  );

  static LinearGradient gradient2 = const LinearGradient(
    colors: <Color>[
      Color(0xff0b806b),
      Color(0xff47bd82),
      Color(0xff0b806b),
      // Color(0xff6ec481),
      // Color(0xff37c97e),
      // Color(0xff47bd82),
      // Color(0xff209c87),
      // Color(0xff0b806b),
    ],
    tileMode: TileMode.mirror,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static SweepGradient sweepGradient1 = SweepGradient(
    colors: [
      Colors.blue.shade400,
      Colors.green.shade200,
      Colors.yellow.shade300,
      Colors.red,
      Colors.blue.shade400,
    ],
    stops: [0.0, 0.25, 0.5, 0.70, 1],
  );

  static RadialGradient radial1 = RadialGradient(
      colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
      stops: [0.2, 0.5, 0.7, 1]);

  static LinearGradient gradient3 = const LinearGradient(
    colors: <Color>[
      Color(0xff47bd82),
      Color(0xff47bd82),
      Color(0xff209c87),
      // Color(0xff6ec481),
      // Color(0xff37c97e),
      // Color(0xff47bd82),
      // Color(0xff209c87),
      // Color(0xff0b806b),
    ],
    tileMode: TileMode.mirror,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static LinearGradient gradient4 =
      const LinearGradient(colors: [Colors.green, Colors.blue]);

  static LinearGradient gradient5 =
      const LinearGradient(colors: [Colors.red, Colors.yellowAccent]);

  static LinearGradient gradient6 = LinearGradient(
    colors: [
      const Color(0xffD6FF7F),
      //Colors.blueGrey.shade500,
      const Color(0xff00B3CC)
    ],
    // begin: const FractionalOffset(0.0, 0.0),
    // end: const FractionalOffset(1.0, 0.0),
    // stops: [0.0, 1.0],
    // tileMode: TileMode.clamp,
  );

  static LinearGradient gradient7 = LinearGradient(
    colors: [
      Color(0xFF0061ff),
      Color(0xFF60efff),
    ],
    begin: const FractionalOffset(0.0, 0.0),
    end: const FractionalOffset(1.0, 0.0),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  static LinearGradient gradient8 =
      const LinearGradient(colors: [Color(0xff402565), Color(0xff30BE96)]);

  static LinearGradient gradient9 = const LinearGradient(
    colors: [
      Color.fromARGB(255, 148, 231, 225),
      Color.fromARGB(255, 62, 182, 226)
    ],
  );

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        canvasColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        hoverColor: Color(0xff27ae61),
        //Color(0xff25D366);
        //Color(0xff9bbb4c);

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
        hoverColor: Color(0xff27ae61),
        colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.black,
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
