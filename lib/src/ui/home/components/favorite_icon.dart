import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class IconWidget extends StatelessWidget {
  final Function onPressed;
  final Image icon;

  const IconWidget({Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: AppColor.shadowColor,
            offset: const Offset(0.0, 1.0),
            blurRadius: 4.0,
            spreadRadius: 1,
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
