import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/details/components/amount_controls.dart';
import 'package:plants_store/src/ui/details/components/counter_widget.dart';
import 'package:plants_store/src/ui/home/components/card_photo.dart';
import 'package:plants_store/theme/text_styles.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Кошик'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Stack(
              children: [
                Container(
                  //height: 150,
                  //padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.shadowColor,
                        offset: const Offset(0.0, 2.0),
                        blurRadius: 4.0,
                        spreadRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          width: 90,
                          height: 120,
                          child: Image.asset(
                            'images/plant_test.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Туя Мікі',
                                      style: get16W500BlackTextStyle(),
                                    ),
                                    Text('200'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: const [
                                        CounterPoductWidget(
                                          height: 23,
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
                                          height: 23,
                                          iconData: Icons.add,
                                        ),
                                      ],
                                    ),
                                    Text('400'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
