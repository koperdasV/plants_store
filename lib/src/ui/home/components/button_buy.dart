import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/favorite/favorite_screen.dart';

class ButtonBuyWidget extends StatelessWidget {
  const ButtonBuyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      bottom: 15,
      child: SizedBox(
        width: 130,
        height: 38,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const FavoriteScreen())));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.kPrimaryColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(0),
            ),
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: AppColor.kPrimaryGradient,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'В кошик',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
