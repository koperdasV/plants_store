part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class LoadProducts extends ProductEvent {}

class GetProducts extends ProductEvent {
  final String name;
  final String imageUrl;
  final String description;
  final String sun;
  final String watering;
  final String frostResistance;
  final String soil;
  final int price;

  const GetProducts(
    this.name,
    this.imageUrl,
    this.description,
    this.sun,
    this.watering,
    this.frostResistance,
    this.soil,
    this.price,
  );
}

class UpdateProducts extends ProductEvent {
  final List<Product> products;

  const UpdateProducts(this.products);

  @override
  List<Object> get props => [products];
}
