import 'package:flutter/material.dart';
import 'package:plants_store/constants.dart';
import 'package:plants_store/screen/Home/home_screen.dart';

import '../widgets/bottom_nav_bar.dart';
import 'Favorite/favorite_screen.dart';
import 'Profile/profile_screen.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  void _onNavigationItemSelected(index) {
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('images/shopping_cart.png'),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Image.asset('images/logo.png'),
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 5),
                child: Text(
                  'PlantShop',
                  style: TextStyle(
                      color: AppColor.selectedItemColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavBar(onItemSelected: _onNavigationItemSelected),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (context, value, _) {
          return IndexedStack(
            index: pageIndex.value,
            children: const [
              HomeScreen(),
              FavoriteScreen(),
              ProfileScreen(),
            ],
          );
        },
      ),
    );
  }
}
