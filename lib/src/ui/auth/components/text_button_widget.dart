import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/widgets/gradient_text.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const TextButtonWidget({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: GradientText(
        text,
        gradient: AppColor.kPrimaryGradient,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
