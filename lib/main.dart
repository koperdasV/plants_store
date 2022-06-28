import 'package:flutter/material.dart';
import 'package:plants_store/navigation/main_navigation.dart';
import 'package:plants_store/screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreenWidget(),
      routes: mainNavigation.routes,
    );
  }
}
