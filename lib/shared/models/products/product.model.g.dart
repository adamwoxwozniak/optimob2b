// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int? ?? 0,
      productId: json['productId'] as int? ?? 0,
      image: json['image'] as String?,
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
      groupId: json['groupId'] as int? ?? 0,
      description: json['description'] as String?,
      ean: json['ean'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      quantity: json['quantity'] as int? ?? 0,
      unit: json['unit'] as String? ?? "",
      valueNet: (json['valueNet'] as num?)?.toDouble() ?? 0,
      valueGross: (json['valueGross'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'image': instance.image,
      'code': instance.code,
      'name': instance.name,
      'groupId': instance.groupId,
      'description': instance.description,
      'ean': instance.ean,
      'price': instance.price,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'valueNet': instance.valueNet,
      'valueGross': instance.valueGross,
    };
