import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
