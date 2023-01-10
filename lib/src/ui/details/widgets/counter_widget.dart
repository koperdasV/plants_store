import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class CounterPoductWidget extends StatelessWidget {
  const CounterPoductWidget({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
