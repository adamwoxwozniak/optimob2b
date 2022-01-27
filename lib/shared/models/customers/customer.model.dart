import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.model.freezed.dart';
part 'customer.model.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    @Default(0) int id,
    @Default("") String code,
    @Default("") String name,
    @Default("") String vatNumber,
    @Default("") String address,
    @Default("") String city,
    @Default("") String zipCode,
    @Default("") String phone,
    @Default("") String email,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}
