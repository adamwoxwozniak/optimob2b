import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @Default(0) int id,
    @Default(0) int productId,
    String? image,
    @Default("") String code,
    @Default("") String name,
    @Default(0) int groupId,
    String? description,
    @Default("") String ean,
    @Default(0) double price,
    @Default(0) int quantity,
    @Default("") String unit,
    @Default(0) double valueNet,
    @Default(0) double valueGross,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
