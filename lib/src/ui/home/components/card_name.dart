import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/home/components/button_buy.dart';

class PlantName extends StatelessWidget {
  const PlantName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                children: const [
                  Text(
                    'Туя Мікі',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 9),
                  Text(
                    'В наявності',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 125, 69, 0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(
                          const CircleBorder(),
                        ),
                      ),
                      child: Icon(
                        Icons.favorite_outline,
                        color: AppColor.kPrimaryColor,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const ButtonBuyWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
