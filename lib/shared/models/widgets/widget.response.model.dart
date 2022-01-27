import 'package:freezed_annotation/freezed_annotation.dart';

import 'incomes.model.dart';

part 'widget.response.model.freezed.dart';
part 'widget.response.model.g.dart';

@freezed
class WidgetResponse with _$WidgetResponse {
  const factory WidgetResponse({
    @Default([]) List<Incomes> incomeChart,
    @Default([]) List<Incomes> marginChart,
    @Default(0) double currentMonthIncome,
    @Default(0) double currentMonthMarginAmount,
    @Default(0) double operatorCurrentMonthIncome,
    @Default(0) double operatorCurrentMonthMargin,
  }) = _WidgetResponse;
  factory WidgetResponse.fromJson(Map<String, dynamic> json) => _$WidgetResponseFromJson(json);
}
