import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:optimob2b/shared/models/customers/customer.model.dart';
import 'package:optimob2b/shared/models/products/product.model.dart';

part 'document.model.freezed.dart';
part 'document.model.g.dart';

@freezed
class Document with _$Document {
  const factory Document(
      {@Default(0) int id,
      @Default("") String number,
      String? sourceNumber,
      @Default(1) int buyerId,
      @Default(1) int receiverId,
      @Default(1) int payerId,
      @Default("") String customerName,
      required DateTime date,
      required DateTime paymentDate,
      required DateTime creationDate,
      @Default(1) int paymentFormId,
      @Default(1) int bufor,
      @Default(0) int correction,
      @Default(0) int type,
      @Default(0) double net,
      @Default(0) double gross,
      @Default([]) List<Product> elements,
      Customer? buyer,
      Customer? receiver,
      Customer? payer}) = _Document;

  factory Document.blank() => Document(date: DateTime.now(), paymentDate: DateTime.now(), creationDate: DateTime.now());
  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
}
