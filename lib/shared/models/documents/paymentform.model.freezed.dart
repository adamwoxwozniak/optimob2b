// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paymentform.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentForm _$PaymentFormFromJson(Map<String, dynamic> json) {
  return _PaymentForm.fromJson(json);
}

/// @nodoc
class _$PaymentFormTearOff {
  const _$PaymentFormTearOff();

  _PaymentForm call({int id = 0, String name = ""}) {
    return _PaymentForm(
      id: id,
      name: name,
    );
  }

  PaymentForm fromJson(Map<String, Object?> json) {
    return PaymentForm.fromJson(json);
  }
}

/// @nodoc
const $PaymentForm = _$PaymentFormTearOff();

/// @nodoc
mixin _$PaymentForm {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentFormCopyWith<PaymentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFormCopyWith<$Res> {
  factory $PaymentFormCopyWith(
          PaymentForm value, $Res Function(PaymentForm) then) =
      _$PaymentFormCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$PaymentFormCopyWithImpl<$Res> implements $PaymentFormCopyWith<$Res> {
  _$PaymentFormCopyWithImpl(this._value, this._then);

  final PaymentForm _value;
  // ignore: unused_field
  final $Res Function(PaymentForm) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentFormCopyWith<$Res>
    implements $PaymentFormCopyWith<$Res> {
  factory _$PaymentFormCopyWith(
          _PaymentForm value, $Res Function(_PaymentForm) then) =
      __$PaymentFormCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$PaymentFormCopyWithImpl<$Res> extends _$PaymentFormCopyWithImpl<$Res>
    implements _$PaymentFormCopyWith<$Res> {
  __$PaymentFormCopyWithImpl(
      _PaymentForm _value, $Res Function(_PaymentForm) _then)
      : super(_value, (v) => _then(v as _PaymentForm));

  @override
  _PaymentForm get _value => super._value as _PaymentForm;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PaymentForm(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentForm implements _PaymentForm {
  const _$_PaymentForm({this.id = 0, this.name = ""});

  factory _$_PaymentForm.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFormFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;

  @override
  String toString() {
    return 'PaymentForm(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentForm &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PaymentFormCopyWith<_PaymentForm> get copyWith =>
      __$PaymentFormCopyWithImpl<_PaymentForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentFormToJson(this);
  }
}

abstract class _PaymentForm implements PaymentForm {
  const factory _PaymentForm({int id, String name}) = _$_PaymentForm;

  factory _PaymentForm.fromJson(Map<String, dynamic> json) =
      _$_PaymentForm.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PaymentFormCopyWith<_PaymentForm> get copyWith =>
      throw _privateConstructorUsedError;
}
