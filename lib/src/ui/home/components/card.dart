import 'package:flutter/material.dart';
import 'package:plants_store/base/src/core/models/products/products.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/details/details_screen.dart';

import '../components.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            product: product,
          ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlantPhoto(
                  product: product,
                ),
                PlantName(
                  product: product,
                ),
              ],
            ),
          ),
          const Positioned(
            right: 0,
            bottom: 15,
            child: ButtonBuyWidget(),
          ),
          PriceWidget(
            product: product,
          ),
        ],
      ),
    );
  }
}
