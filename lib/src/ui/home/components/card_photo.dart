import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:plants_store/base/src/core/models/products/products.dart';

class PlantPhoto extends StatelessWidget {
  const PlantPhoto({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 90,
          height: 120,
          child: Image.network(
            product.photoUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
