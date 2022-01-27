// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as int? ?? 0,
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
      vatNumber: json['vatNumber'] as String? ?? "",
      address: json['address'] as String? ?? "",
      city: json['city'] as String? ?? "",
      zipCode: json['zipCode'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'vatNumber': instance.vatNumber,
      'address': instance.address,
      'city': instance.city,
      'zipCode': instance.zipCode,
      'phone': instance.phone,
      'email': instance.email,
    };
