// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsResponse _$$_ProductsResponseFromJson(Map<String, dynamic> json) =>
    _$_ProductsResponse(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      itemsLength: json['itemsLength'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductsResponseToJson(_$_ProductsResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'itemsLength': instance.itemsLength,
    };
