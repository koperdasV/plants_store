import 'package:flutter/material.dart';

class PlantPhoto extends StatelessWidget {
  const PlantPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        width: 90,
        height: 120,
        child: Image.asset(
          'images/plant_test.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
