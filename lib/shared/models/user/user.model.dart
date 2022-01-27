import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User(
      {@Default(0) int id,
      @Default("") String name,
      @Default(true) bool active,
      String? password,
      String? role,
      @Default("") String email,
      int? customerId}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
