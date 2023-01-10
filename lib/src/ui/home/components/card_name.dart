import 'package:flutter/material.dart';

class PlantName extends StatelessWidget {
  const PlantName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 120,
      top: 14,
      child: Column(
        children: const [
          Text(
            'Туя Мікі',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9, left: 8),
            child: Text(
              'В наявності',
              style: TextStyle(
                color: Color.fromRGBO(49, 125, 69, 0.7),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
