import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final Function onPressed;
  final Image icon;

  const IconWidget({Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 1.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Center(
        child: IconButton(
          padding: const EdgeInsets.only(top: 0),
          splashColor: Colors.red,
          onPressed: onPressed(),
          icon: icon,
          color: const Color.fromRGBO(33, 129, 0, 0.7),
        ),
      ),
    );
  }
}