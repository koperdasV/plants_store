// // ignore_for_file: avoid_print

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:plants_store/core/repository/product/base_product_repository.dart';
// import 'package:plants_store/src/models/product_model.dart';

// class ProductRepository extends BaseProductRepository {
//   final user = FirebaseAuth.instance.currentUser;
//   final productCollection =
//       FirebaseFirestore.instance.collection('users-products');

//   @override
//   Stream<List<Product>> getAllProducts() {
//     return productCollection
//         .doc(user?.email)
//         .collection('products')
//         .snapshots()
//         .map((snapshot) =>
//             snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList());
//   }
// }
