import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;

  const IconWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: 50,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
            shape: MaterialStateProperty.all(
              const CircleBorder(),
            ),
          ),
          child: Image.asset(
            icon,
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
