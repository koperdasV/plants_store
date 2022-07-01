import 'package:flutter/material.dart';
import 'package:plants_store/widgets/list_card_widget.dart';
import 'package:plants_store/widgets/categories.dart';
import 'package:plants_store/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SearchWidget(),
          Categories(),
          ListCardWidget(),
        ],
      ),
    );
  }
}
