import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConfig {
  static Color get appBlack => const Color(0xdd000000);

  static Color get secBlack => const Color.fromARGB(255, 8, 13, 28);

  static Color get hintGrey => const Color(0xff8b8c89);

  // static Color get appGrey => const Color.fromARGB(255, 74, 85, 78);

  static Color get appGrey => const Color.fromARGB(255, 225, 225, 230);

  // static Color get primaryColor => const Color(0xff004d3d);
  static Color get primaryColor => const Color(0xff6096ba);
  static Color get lightPrimary => const Color(0xffa3cef1);

  static Color get secColor => const Color(0xffe2725b);

  static TextStyle body() => GoogleFonts.manrope(
        fontSize: 16,
        height: 1.4,
        color: appBlack,
      );

  static TextStyle hint() => GoogleFonts.manrope(
        fontSize: 12,
        height: 1.4,
        color: secBlack,
        fontWeight: FontWeight.w300,
      );

  static TextStyle sub() => GoogleFonts.manrope(
        fontSize: 14,
        height: 1.4,
        color: appBlack,
      );

  static TextStyle title() => GoogleFonts.manrope(
        fontSize: 18,
        height: 1.4,
        color: appBlack,
      );

  static TextStyle boldTitle() => GoogleFonts.manrope(
        fontSize: 20,
        height: 1.4,
        color: appBlack,
        fontWeight: FontWeight.bold,
      );

  static TextStyle button1() => GoogleFonts.manrope(
        fontSize: 14,
        height: 1.4,
        color: Colors.white,
      );
}
