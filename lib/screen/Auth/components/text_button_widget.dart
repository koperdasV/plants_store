import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

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
      child: Text(
        text,
        style: TextStyle(
          color: AppColor.kPrimaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}