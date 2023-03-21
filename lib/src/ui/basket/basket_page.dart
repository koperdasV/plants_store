import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/auth/components/button_widget.dart';
import 'package:plants_store/src/ui/details/components/amount_controls.dart';
import 'package:plants_store/src/ui/details/components/counter_widget.dart';
import 'package:plants_store/src/ui/home/components/button_buy.dart';
import 'package:plants_store/src/ui/home/components/card_photo.dart';
import 'package:plants_store/theme/text_styles.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Кошик',
          style: get18W600PrimaryColorText(),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              children: [
                Container(
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
                    children: [
                      SizedBox(
                        width: 75,
                        height: 100,
                        child: Image.asset(
                          'images/plant_test.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Туя Мікі',
                                      style: get16W500BlackTextStyle(),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.delete_outline_rounded,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 13),
                                child: Row(
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
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        CounterPoductWidget(
                                          height: 23,
                                          iconData: Icons.add,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '200₴',
                                          style: get14W400SilverTextButton(),
                                        ),
                                        Text(
                                          '400₴',
                                          style: get16W700BlackTextStyle(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
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
      bottomNavigationBar: SafeArea(
        bottom: false,
        child: Container(
          height: 120,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Загальна сума:',
                      style: get18W500BlackTextStyle(),
                    ),
                    Text(
                      '930 ₴',
                      style: get18W700PrimaryColorText(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ButtonWidget(
                  child: const Text('Оформити замовлення'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
