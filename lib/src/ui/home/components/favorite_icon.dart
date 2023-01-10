import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final Function onPressed;
  final String icon;

  const IconWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
      ),
      child: IconButton(
        onPressed: onPressed(),
        icon: Image.asset(
          icon,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
