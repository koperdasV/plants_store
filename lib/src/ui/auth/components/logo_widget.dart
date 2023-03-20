import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/widgets/gradient_text.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/logo.png'),
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 5),
            child: GradientText(
              'PlantShop',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
              ),
              gradient: AppColor.kPrimaryGradient,
            ),
          ),
        ],
      ),
    );
  }
}
