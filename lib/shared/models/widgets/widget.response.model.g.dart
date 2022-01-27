// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget.response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WidgetResponse _$$_WidgetResponseFromJson(Map<String, dynamic> json) =>
    _$_WidgetResponse(
      incomeChart: (json['incomeChart'] as List<dynamic>?)
              ?.map((e) => Incomes.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      marginChart: (json['marginChart'] as List<dynamic>?)
              ?.map((e) => Incomes.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentMonthIncome: (json['currentMonthIncome'] as num?)?.toDouble() ?? 0,
      currentMonthMarginAmount:
          (json['currentMonthMarginAmount'] as num?)?.toDouble() ?? 0,
      operatorCurrentMonthIncome:
          (json['operatorCurrentMonthIncome'] as num?)?.toDouble() ?? 0,
      operatorCurrentMonthMargin:
          (json['operatorCurrentMonthMargin'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_WidgetResponseToJson(_$_WidgetResponse instance) =>
    <String, dynamic>{
      'incomeChart': instance.incomeChart,
      'marginChart': instance.marginChart,
      'currentMonthIncome': instance.currentMonthIncome,
      'currentMonthMarginAmount': instance.currentMonthMarginAmount,
      'operatorCurrentMonthIncome': instance.operatorCurrentMonthIncome,
      'operatorCurrentMonthMargin': instance.operatorCurrentMonthMargin,
    };
