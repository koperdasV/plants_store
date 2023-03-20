import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.size,
    required this.tabController,
  }) : super(key: key);

  final Size size;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.shadowColor,
              spreadRadius: 1.0,
              blurRadius: 4.0,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Column(
          children: [
            TabBar(
              unselectedLabelColor: AppColor.unselectedItemColor,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: AppColor.kPrimaryGradient,
              ),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              controller: tabController,
              tabs: const [
                Tab(
                  height: 28,
                  text: 'Всі',
                ),
                Tab(
                  height: 28,
                  text: 'Хвойні',
                ),
                Tab(
                  height: 28,
                  text: 'Декоративні',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
