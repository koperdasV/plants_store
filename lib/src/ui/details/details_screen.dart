import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/details/widgets/counter_widget.dart';
import 'package:plants_store/src/ui/details/widgets/image_widget.dart';
import 'package:plants_store/src/ui/home/components.dart';
import 'package:plants_store/widgets/gradient_text.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            color: Colors.white,
          ),
          const ImageWidget(),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: 430,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Туя Мікі",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: AppColor.unselectedItemColor,
                                    size: 32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: GradientText(
                              "200₴",
                              gradient: AppColor.kPrimaryGradient,
                              style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Row(
                        children: [
                          IconWidget(
                            onPressed: () {},
                            icon: 'images/description.png',
                          ),
                          IconWidget(
                            onPressed: () {},
                            icon: 'images/sun.png',
                          ),
                          IconWidget(
                            onPressed: () {},
                            icon: 'images/water.png',
                          ),
                          IconWidget(
                            onPressed: () {},
                            icon: 'images/snow.png',
                          ),
                          IconWidget(
                            onPressed: () {},
                            icon: 'images/soil.png',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // SizedBox(
          //   width: size.width / 1.5,
          //   height: size.height / 5.5,
          //   child: const SingleChildScrollView(
          //     scrollDirection: Axis.vertical,
          //     child: DescriptionWidget(
          //       description:
          //           'Вічнозелена хвойна туя, приваблива своєю мініатюрною формою. Крона має форму конуса зі злегка скрученими вертикальними валикоподібними пагонами.',
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(112, 112, 112, 0.25),
                    blurRadius: 20,
                    spreadRadius: 10,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              width: size.width,
              height: size.height / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    height: 43,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Text(
        widget.description,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
