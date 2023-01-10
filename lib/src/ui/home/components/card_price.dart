import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
  }) : super(key: key);

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
        width: 66,
        height: 50,
        child: const Center(
          child: Text(
            '200₴',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
