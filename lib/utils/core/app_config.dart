import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConfig {
  static Color get appBlack => const Color(0xdd000000);

  static Color get secBlack => const Color(0xff081C15);

  static Color get hintGrey => const Color.fromARGB(255, 204, 209, 206);

  // static Color get appGrey => const Color.fromARGB(255, 74, 85, 78);

  static Color get appGrey => const Color(0xffe1e6e1);

  static Color get primaryColor => const Color(0xff004d3d);
  static Color get lightPrimary => primaryColor.withOpacity(0.3);

  static Color get secColor => const Color(0xffe2725b);

  static TextStyle body() => GoogleFonts.lato(
        fontSize: 16,
        height: 1.4,
        color: appBlack,
      );

  static TextStyle hint() => GoogleFonts.lato(
        fontSize: 12,
        height: 1.4,
        color: secBlack,
        fontWeight: FontWeight.w300,
      );

  static TextStyle sub() => GoogleFonts.lato(
        fontSize: 14,
        height: 1.4,
        color: appBlack,
      );

  static TextStyle title() => GoogleFonts.lato(
        fontSize: 18,
        height: 1.4,
        color: appBlack,
      );

  static TextStyle boldTitle() => GoogleFonts.lato(
        fontSize: 20,
        height: 1.4,
        color: appBlack,
        fontWeight: FontWeight.bold,
      );

  static TextStyle button1() => GoogleFonts.lato(
        fontSize: 14,
        height: 1.4,
        color: Colors.white,
      );
}
