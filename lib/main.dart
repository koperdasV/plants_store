import 'package:flutter/material.dart';
import 'package:plants_store/navigation/main_navigation.dart';
import 'package:plants_store/resources/styles.dart';
import 'package:plants_store/src/ui/login/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AuthScreen(),
      theme: buildThemeData(),
      routes: mainNavigation.routes,
    );
  }
}
