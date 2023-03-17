import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height / 1.7,
      child: Image.asset(
        'images/plant_details_test.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
