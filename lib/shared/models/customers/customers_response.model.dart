import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer.model.dart';

part 'customers_response.model.freezed.dart';
part 'customers_response.model.g.dart';

@freezed
class CustomersResponse with _$CustomersResponse {
  const factory CustomersResponse({@Default([]) List<Customer> items, @Default(0) int itemsLength}) = _CustomersResponse;

  factory CustomersResponse.fromJson(Map<String, dynamic> json) => _$CustomersResponseFromJson(json);
}
