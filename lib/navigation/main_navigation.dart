import 'package:flutter/material.dart';
import 'package:plants_store/src/ui/auth/auth_screen.dart';
import 'package:plants_store/src/ui/profile/profile_screen.dart';
import 'package:plants_store/src/ui/main/main_screen_widget.dart';
import '../src/ui/details/details_screen.dart';
import '../src/ui/favorite/favorite_screen.dart';

abstract class MainNavigationRouteName {
  static const auth = '/auth';
  static const main = '/main';
  static const profile = '/profile';
  static const favorite = '/favorite';
  static const details = '/details';
}

class MainNavigation {
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.auth: (context) => const AuthScreen(),
    MainNavigationRouteName.main: (context) => const MainScreenWidget(),
    MainNavigationRouteName.profile: (context) => const ProfileScreen(),
    MainNavigationRouteName.favorite: (context) => const FavoriteScreen(),
    MainNavigationRouteName.details: (context) => const DetailScreen(),
  };
}
