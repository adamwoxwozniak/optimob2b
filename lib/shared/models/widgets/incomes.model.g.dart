// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incomes.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Incomes _$$_IncomesFromJson(Map<String, dynamic> json) => _$_Incomes(
      (json['value'] as num).toDouble(),
      json['label'] as String,
      json['serie'] as int,
    );

Map<String, dynamic> _$$_IncomesToJson(_$_Incomes instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'serie': instance.serie,
    };
