import 'package:freezed_annotation/freezed_annotation.dart';

part 'incomes.model.freezed.dart';
part 'incomes.model.g.dart';

@freezed
class Incomes with _$Incomes {
  const factory Incomes(double value, String label, int serie) = _Incomes;
  factory Incomes.fromJson(Map<String, dynamic> json) => _$IncomesFromJson(json);
}
