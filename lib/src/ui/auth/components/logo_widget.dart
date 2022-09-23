import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

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
            child: Text(
              'PlantShop',
              style: TextStyle(
                  color: AppColor.selectedItemColor,
                  fontSize: 48,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
