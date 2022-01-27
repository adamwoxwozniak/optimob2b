import 'package:freezed_annotation/freezed_annotation.dart';

part 'paymentform.model.freezed.dart';
part 'paymentform.model.g.dart';

@freezed
class PaymentForm with _$PaymentForm {
  const factory PaymentForm({@Default(0) int id, @Default("") String name}) = _PaymentForm;

  factory PaymentForm.fromJson(Map<String, dynamic> json) => _$PaymentFormFromJson(json);
}
