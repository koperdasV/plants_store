import 'package:flutter/material.dart';
import 'package:plants_store/base/src/core/models/products/products.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/home/components/button_buy.dart';
import 'package:plants_store/theme/text_styles.dart';

class PlantName extends StatelessWidget {
  const PlantName({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: get18W500BlackTextStyle(),
                ),
                const SizedBox(height: 9),
                Text(
                  'В наявності',
                  style: get14W400GreenStatusStyle(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(10),
                  ),
                  shape: MaterialStateProperty.all(
                    const CircleBorder(),
                  ),
                ),
                child: Icon(
                  Icons.favorite_outline,
                  color: AppColor.kPrimaryColor,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
