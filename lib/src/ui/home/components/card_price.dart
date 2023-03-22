import 'package:flutter/material.dart';
import 'package:plants_store/base/src/core/models/products/products.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/theme/text_styles.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
            gradient: AppColor.kPrimaryGradient,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        width: 56,
        height: 40,
        child:  Center(
          child: Text(
            product.price.toString(),
            style: get16W700WhiteTextStyle(),
          ),
        ),
      ),
    );
  }
}
