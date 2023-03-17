import 'package:flutter/material.dart';

class ResponsiveSize {
  static Widget width(double size, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * size / 360,
    );
  }

  static Widget height(double size, BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * size / 360,
    );
  }
}
