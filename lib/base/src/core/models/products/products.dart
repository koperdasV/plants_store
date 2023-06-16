import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    required String productId,
    required String photoUrl,
    required int price,
    required String name,
    required String description,
    required String light,
    required String watering,
    required String frost,
    required String soil,
  }) = _Product;

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      productId: snap.id,
      photoUrl: snap['photoUrl'],
      price: snap['price'],
      name: snap['name'],
      description: snap['description'],
      light: snap['light'],
      watering: snap['watering'],
      frost: snap['frost'],
      soil: snap['soil'],
    );
    return product;
  }
}
