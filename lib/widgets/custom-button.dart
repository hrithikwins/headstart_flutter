import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget customButton(String text, VoidCallback onPressed) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      width: 265,
      height: 53,
      decoration: BoxDecoration(
        color: AppColors.dullRed,
        borderRadius: BorderRadius.circular(
          4,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}




Widget customButtonDesign(String text) {
  return Container(
    width: 265,
    height: 53,
    decoration: BoxDecoration(
      color: AppColors.dullRed,
      borderRadius: BorderRadius.circular(
        4,
      ),
    ),
    alignment: Alignment.center,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
