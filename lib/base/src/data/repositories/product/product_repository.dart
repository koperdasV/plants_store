import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:plants_store/base/src/core/models/products/products.dart';
import 'package:plants_store/base/src/data/repositories/product/base_product_repository.dart';

class ProductRepository extends BaseProductRepository {
  final productCollection = FirebaseFirestore.instance.collection('products');

  @override
  Stream<List<Product>> getAllProducts() {
    return productCollection.snapshots().map((snapshots) =>
        snapshots.docs.map((doc) => Product.fromSnapshot(doc)).toList());
  }
}
