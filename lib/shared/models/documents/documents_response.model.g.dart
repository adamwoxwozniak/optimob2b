// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentsResponse _$$_DocumentsResponseFromJson(Map<String, dynamic> json) =>
    _$_DocumentsResponse(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      itemsLength: json['itemsLength'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DocumentsResponseToJson(
        _$_DocumentsResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'itemsLength': instance.itemsLength,
    };
