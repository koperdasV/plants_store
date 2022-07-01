import 'package:flutter/material.dart';
import 'package:plants_store/constants.dart';

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
        Container(
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
        const PlantPhoto(),
        const PlantName(),
        const FavoriteWidget(),
        const ButtonBuyWidget(),
        const PriceWidget(),
      ],
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.kPrimaryColor,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        width: 66,
        height: 50,
        child: const Center(
          child: Text(
            '200',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonBuyWidget extends StatelessWidget {
  const ButtonBuyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      bottom: 15,
      child: SizedBox(
        width: 130,
        height: 38,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(AppColor.kPrimaryColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))),
          child: const Text(
            'В кошик',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 14,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1.0, 1.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: IconButton(
          splashColor: Colors.grey,
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            color: Color.fromRGBO(33, 129, 0, 0.7),
          ),
        ),
      ),
    );
  }
}

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
                color: Color.fromRGBO(33, 129, 0, 0.7),
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

class PlantPhoto extends StatelessWidget {
  const PlantPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        width: 120,
        height: 150,
        child: Image.asset(
          'images/plant_test.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
