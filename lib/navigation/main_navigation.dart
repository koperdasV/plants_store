import 'package:flutter/material.dart';
import 'package:plants_store/screen/Profile/profile_screen.dart';
import 'package:plants_store/screen/main_screen_widget.dart';
import '../screen/Favorite/favorite_screen.dart';

abstract class MainNavigationRouteName {
  static const auth = '/auth';
  static const home = '/home';
  static const profile = '/profile';
  static const favorite = '/favorite';
  static const details = '/details';
}

class MainNavigation {
  final routes = <String, Widget Function(BuildContext)>{
    //MainNavigationRouteName.auth: (context) => const AuthScreen(),
    MainNavigationRouteName.home: (context) => const MainScreenWidget(),
    MainNavigationRouteName.profile: (context) => const ProfileScreen(),
    MainNavigationRouteName.favorite: (context) => const FavoriteScreen(),
    //MainNavigationRouteName.details: (context) => const DetailsScreen(),
  };
}
