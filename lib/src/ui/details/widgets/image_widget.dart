import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height / 1.6,
      child: Image.asset(
        'images/plant_details_test.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
