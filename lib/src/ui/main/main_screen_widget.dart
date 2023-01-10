import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_state.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/auth/auth_screen.dart';
import 'package:plants_store/src/ui/home/home_screen.dart';
import 'package:plants_store/widgets/gradient_text.dart';

import '../../../widgets/bottom_nav_bar.dart';
import '../favorite/favorite_screen.dart';
import '../profile/profile_screen.dart';

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('images/shopping_cart.png'),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Image.asset('images/logo.png'),
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 5),
                child: GradientText(
                  'PlantShop',
                  gradient: AppColor.kPrimaryGradient,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavBar(onItemSelected: _onNavigationItemSelected),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const AuthScreen()),
              (route) => false,
            );
          }
        },
        child: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: (context, value, _) {
            return IndexedStack(
              index: pageIndex.value,
              children: [
                const HomeScreen(),
                const FavoriteScreen(),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return const ProfileScreen();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
