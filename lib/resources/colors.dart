import 'package:flutter/material.dart';

abstract class AppColor {
  static Color kPrimaryColor = const Color(0xFF218100);
  static Color unselectedItemColor = const Color(0xff317D45);
  static Color shadowColor = const Color.fromRGBO(0, 0, 0, 0.25);

  static LinearGradient kPrimaryGradient = const LinearGradient(
    colors: [
      Color(0xff317D45),
      Color(0xff2F9E4D),
    ],
  );
}
