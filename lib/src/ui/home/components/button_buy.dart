import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/favorite/favorite_screen.dart';
import 'package:plants_store/theme/text_styles.dart';

class ButtonBuyWidget extends StatelessWidget {
  const ButtonBuyWidget({
    Key? key,
    this.width = 130,
    this.height = 30,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 15),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const FavoriteScreen())));
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(0),
            ),
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: AppColor.kPrimaryGradient,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'В кошик',
                style: get14W500WhiteTextButton(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
