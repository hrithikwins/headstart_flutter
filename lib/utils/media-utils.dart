import 'package:flutter/material.dart';

class ResponsiveSize {
  static Widget sizedWidth(double size, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * size / 360,
    );
  }

  static Widget sizedHeight(double size, BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * size / 360,
    );
  }

  static double width(double size, BuildContext context) {
    return MediaQuery.of(context).size.width * size / 360;
  }

  static double height(double size, BuildContext context) {
    return MediaQuery.of(context).size.height * size / 360;
  }
}
