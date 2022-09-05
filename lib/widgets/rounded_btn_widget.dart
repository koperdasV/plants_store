import 'package:flutter/material.dart';


class RoundedButtonWidget extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;
  const RoundedButtonWidget({
    Key? key,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: SizedBox(
        width: size.width / 4,
        height: 45,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            // side: MaterialStateProperty.all(
            //   BorderSide(
            //     color: AppColor.kPrimaryColor,
            //     width: 1.5,
            //   ),
            // ),
          ),
          onPressed: onPressed,
          child: Image(image: AssetImage(image)),
        ),
      ),
    );
  }
}
