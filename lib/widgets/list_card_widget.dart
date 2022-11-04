import 'package:flutter/material.dart';
import 'package:plants_store/src/ui/home/components.dart';

import '../src/ui/details/details_screen.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: CardWidget(),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          splashColor: Colors.grey,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailScreen(
                  // fact: catFact.fact,
                  // image: cats.url,
                  ),
            ),
          ),
          child: Container(
            height: 178,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 20.0,
                ),
              ],
              color: Colors.white,
            ),
          ),
        ),
        const PlantPhoto(),
        const PlantName(),
        Positioned(
          top: 15,
          right: 14,
          child: IconWidget(
            onPressed: () {},
            icon: Image.asset('images/icon_favorites.png'),
          ),
        ),
        const ButtonBuyWidget(),
        const PriceWidget(),
      ],
    );
  }
}
