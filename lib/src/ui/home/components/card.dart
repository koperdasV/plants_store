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
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 148,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PlantPhoto(),
                PlantName(),
              ],
            ),
          ),
          const PriceWidget(),
        ],
      ),
    );
  }
}
