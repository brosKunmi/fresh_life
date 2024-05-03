import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConfig {
  static Color get appBlack => const Color(0xfF000000);

  static Color get secBlack => const Color(0xf1132a13);

  static Color get hintGrey => const Color(0xffA3B18A);

  static Color get appGrey => const Color(0xffDAD7CD);

  static Color get primaryColor => const Color(0xff3DAC78);
  static Color get lightPrimary => const Color(0xffB7E4C7);

  static Color get secColor => const Color(0xffBC2023);

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
