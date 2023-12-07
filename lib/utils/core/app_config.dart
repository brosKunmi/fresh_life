import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConfig {
  static Color get appBlack => const Color(0xff0c1618);

  static Color get secBlack => const Color(0xf1132a13);

  static Color get hintGrey => const Color.fromARGB(255, 146, 160, 169);

  static Color get appGrey => const Color.fromARGB(255, 223, 233, 239);

  static Color get primaryColor => const Color(0xff01263d);
  static Color get lightPrimary => const Color(0xff72bad5);

  static Color get secColor => const Color(0xffbe1e2d);

  static TextStyle body() => GoogleFonts.manrope(
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
        color: secBlack,
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
