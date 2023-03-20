import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class CounterPoductWidget extends StatelessWidget {
  const CounterPoductWidget({
    Key? key,
    required this.iconData,
    this.height,
  }) : super(key: key);

  final IconData iconData;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          shape: MaterialStateProperty.all(
            const CircleBorder(),
          ),
        ),
        child: Icon(
          iconData,
          color: AppColor.unselectedItemColor,
        ),
      ),
    );
  }
}
