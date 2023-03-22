import 'package:plants_store/base/src/core/models/products/products.dart';

abstract class BaseProductRepository {
  Stream<List<Product>> getAllProducts();
}
