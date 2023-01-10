import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/details/details_screen.dart';

import '../components.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          splashColor: Colors.grey,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailScreen(),
            ),
          ),
          child: Container(
            height: 178,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: AppColor.shadowColor,
                  offset: const Offset(0.0, 2.0),
                  blurRadius: 4.0,
                  spreadRadius: 1,
                ),
              ],
              color: Colors.white,
            ),
          ),
        ),
        const PlantPhoto(),
        const PlantName(),
        Positioned(
          top: 15,
          right: 14,
          child: IconWidget(
            onPressed: () {},
            icon: 'images/favorites.png',
          ),
        ),
        const Positioned(
          right: 15,
          bottom: 15,
          child: ButtonBuyWidget(),
        ),
        const PriceWidget(),
      ],
    );
  }
}
