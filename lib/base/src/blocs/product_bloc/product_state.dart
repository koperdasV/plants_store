part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  final List<Product> allProducts;
  const ProductState({this.allProducts = const <Product>[]});

  @override
  List<Object> get props => [allProducts];
}

class ProductInitial extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  const ProductLoaded({this.products = const <Product>[]});

  @override
  List<Object> get props => [allProducts];
}

class ProductError extends ProductState {
  final String error;
    const ProductError(this.error);

  @override
  List<Object> get props => [error];

}
