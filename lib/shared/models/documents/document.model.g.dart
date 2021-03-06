// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Document _$$_DocumentFromJson(Map<String, dynamic> json) => _$_Document(
      id: json['id'] as int? ?? 0,
      number: json['number'] as String? ?? "",
      sourceNumber: json['sourceNumber'] as String?,
      buyerId: json['buyerId'] as int? ?? 1,
      receiverId: json['receiverId'] as int? ?? 1,
      payerId: json['payerId'] as int? ?? 1,
      customerName: json['customerName'] as String? ?? "",
      date: DateTime.parse(json['date'] as String),
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      creationDate: DateTime.parse(json['creationDate'] as String),
      paymentFormId: json['paymentFormId'] as int? ?? 1,
      bufor: json['bufor'] as int? ?? 1,
      correction: json['correction'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
      net: (json['net'] as num?)?.toDouble() ?? 0,
      gross: (json['gross'] as num?)?.toDouble() ?? 0,
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      buyer: json['buyer'] == null
          ? null
          : Customer.fromJson(json['buyer'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : Customer.fromJson(json['receiver'] as Map<String, dynamic>),
      payer: json['payer'] == null
          ? null
          : Customer.fromJson(json['payer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DocumentToJson(_$_Document instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'sourceNumber': instance.sourceNumber,
      'buyerId': instance.buyerId,
      'receiverId': instance.receiverId,
      'payerId': instance.payerId,
      'customerName': instance.customerName,
      'date': instance.date.toIso8601String(),
      'paymentDate': instance.paymentDate.toIso8601String(),
      'creationDate': instance.creationDate.toIso8601String(),
      'paymentFormId': instance.paymentFormId,
      'bufor': instance.bufor,
      'correction': instance.correction,
      'type': instance.type,
      'net': instance.net,
      'gross': instance.gross,
      'elements': instance.elements,
      'buyer': instance.buyer,
      'receiver': instance.receiver,
      'payer': instance.payer,
    };
