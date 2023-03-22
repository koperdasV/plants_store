import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColor.kPrimaryGradient,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5.0,
            blurRadius: 7.0,
            offset: const Offset(0, 0.25),
          )
        ],
      ),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavigationBarItem(
              index: 0,
              image: 'images/icon_plants.png',
              lable: 'Рослини',
              isSelected: (_selectedTab == 0),
              onTap: onSelectedTab,
            ),
            _NavigationBarItem(
              index: 1,
              image: 'images/icon_favorites.png',
              lable: 'Улюблені',
              isSelected: (_selectedTab == 1),
              onTap: onSelectedTab,
            ),
            _NavigationBarItem(
              index: 2,
              image: 'images/icon_profile.png',
              lable: 'Профіль',
              isSelected: (_selectedTab == 2),
              onTap: onSelectedTab,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    required this.lable,
    required this.image,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final ValueChanged<int> onTap;
  final bool isSelected;
  final int index;
  final String lable;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: Container(
        decoration: isSelected
            ? const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 4,
                    color: Colors.white,
                  ),
                ),
              )
            : const BoxDecoration(),
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(image),
              color: Colors.white,
              height: 26,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              lable,
              style: isSelected
                  ? const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  : const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
