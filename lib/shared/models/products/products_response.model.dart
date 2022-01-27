import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.model.dart';

part 'products_response.model.freezed.dart';
part 'products_response.model.g.dart';

@freezed
class ProductsResponse with _$ProductsResponse {
  const factory ProductsResponse({@Default([]) List<Product> items, @Default(0) int itemsLength}) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) => _$ProductsResponseFromJson(json);
}
