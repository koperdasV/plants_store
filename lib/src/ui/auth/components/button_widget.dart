import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget? child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(0),
            ),
          ),
          onPressed: onPressed,
          child: Ink(
            decoration: BoxDecoration(
              gradient: AppColor.kPrimaryGradient,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
