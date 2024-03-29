import 'package:flutter/material.dart';
import 'package:plants_store/src/ui/details/components/counter_widget.dart';
import 'package:plants_store/src/ui/home/components.dart';

class AmountControls extends StatelessWidget {
  const AmountControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        height: 70,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(112, 112, 112, 0.25),
              blurRadius: 20,
              spreadRadius: 10,
            )
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                CounterPoductWidget(
                  iconData: Icons.remove,
                ),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CounterPoductWidget(
                  iconData: Icons.add,
                ),
              ],
            ),
            const ButtonBuyWidget(
              width: 160,
            ),
          ],
        ),
      ),
    );
  }
}
