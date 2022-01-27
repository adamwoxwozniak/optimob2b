// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomersResponse _$$_CustomersResponseFromJson(Map<String, dynamic> json) =>
    _$_CustomersResponse(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      itemsLength: json['itemsLength'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CustomersResponseToJson(
        _$_CustomersResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'itemsLength': instance.itemsLength,
    };
