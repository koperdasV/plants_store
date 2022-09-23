import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String imageUrl;
  final String description;
  final String sun;
  final String watering;
  final String frostResistance;
  final String soil;
  final int price;

  const Product({
    required this.name,
    required this.frostResistance,
    required this.imageUrl,
    required this.sun,
    required this.watering,
    required this.soil,
    required this.description,
    required this.price,
  });

  Map<String, Object> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'model': sun,
      'material': watering,
      'frostResistance': frostResistance,
      'soil': soil,
      'description': description,
      'price': price,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      imageUrl: json['imageUrl'],
      sun: json['sun'],
      watering: json['watering'],
      description: json['description'],
      price: json['price'],
      frostResistance: json['frostResistance'],
      soil: json['soil'],
    );
  }

  @override
  String toString() {
    return 'Product{name: $name,imageUrl: $imageUrl, model: $sun, material: $watering, description: $description, price: $price,frostResistance: $frostResistance,soil: $soil,}';
  }

  Map<String, Object> toDocument() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'frostResistance': frostResistance,
      'soil': soil,
      'model': sun,
      'material': watering,
      'description': description,
      'price': price,
    };
  }

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      imageUrl: snap['imageUrl'],
      sun: snap['model'],
      watering: snap['material'],
      description: snap['description'],
      price: snap['price'],
      frostResistance: snap['frostResistance'],
      soil: snap['soil'],
    );
    return product;
  }

  @override
  List<Object?> get props => [
        name,
        imageUrl,
        sun,
        watering,
        frostResistance,
        soil,
        description,
        price,
      ];
}
