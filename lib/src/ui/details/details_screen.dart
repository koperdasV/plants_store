import 'package:flutter/material.dart';
import 'package:plants_store/base/src/core/models/products/products.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/basket/basket_page.dart';
import 'package:plants_store/src/ui/details/components/amount_controls.dart';
import 'package:plants_store/src/ui/details/components/description_widget.dart';
import 'package:plants_store/src/ui/home/components.dart';
import 'package:plants_store/theme/text_styles.dart';
import 'package:plants_store/widgets/gradient_text.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.product,
  });

  final String title;
  final String description;
  final Product product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Деталі',
          style: get18W600PrimaryColorText(),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BasketPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: AppColor.kPrimaryColor,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 340,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.product.photoUrl),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //       height: 28,
          //       width: 54,
          //       decoration: BoxDecoration(
          //         color: Colors.black.withOpacity(0.7),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       // child: const Center(
          //       //   child: Text(
          //       //     '1 / 2',
          //       //     style: TextStyle(
          //       //       color: Colors.white,
          //       //       fontWeight: FontWeight.w600,
          //       //     ),
          //       //   ),
          //       // ),
          //     )
          //   ],
          // ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.product.name,
                              style: const TextStyle(
                                fontSize: 22,
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
                        GradientText(
                          "${widget.product.price}₴",
                          gradient: AppColor.kPrimaryGradient,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        IconWidget(
                          onPressed: () {
                          },
                          icon: 'images/description.png',
                        ),
                        IconWidget(
                          onPressed: () {
                          },
                          icon: 'images/sun.png',
                        ),
                        IconWidget(
                          onPressed: () {
                          },
                          icon: 'images/water.png',
                        ),
                        IconWidget(
                          onPressed: () {
                          },
                          icon: 'images/snow.png',
                        ),
                        IconWidget(
                          onPressed: () {
                          },
                          icon: 'images/soil.png',
                        ),
                      ],
                    ),
                  ),
                  DescriptionWidget(
                    title: widget.title,
                    description: widget.description,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AmountControls(),
    );
  }
}
