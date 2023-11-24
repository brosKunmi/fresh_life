import 'package:flutter/material.dart';

class SizeConfig {
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double topPadding(BuildContext context) =>
      MediaQuery.of(context).padding.top;

  static double gap(double height, BuildContext context) {
    double vph = MediaQuery.of(context).size.longestSide;
    vph = vph > 812 ? 812 : vph;

    return height * (vph / 100);
  }

  static double space(double width, BuildContext context) {
    double vpw = MediaQuery.of(context).size.shortestSide;
    vpw = vpw > 375 ? 375 : vpw;

    return (width / 100) * vpw;
  }

  static double boxe(double height, BuildContext context) {
    double vph = MediaQuery.of(context).size.longestSide;
    //vph = vph > 812 ? 812 : vph;

    return height * vph / 812;
  }
}
