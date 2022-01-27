// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'incomes.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Incomes _$IncomesFromJson(Map<String, dynamic> json) {
  return _Incomes.fromJson(json);
}

/// @nodoc
class _$IncomesTearOff {
  const _$IncomesTearOff();

  _Incomes call(double value, String label, int serie) {
    return _Incomes(
      value,
      label,
      serie,
    );
  }

  Incomes fromJson(Map<String, Object?> json) {
    return Incomes.fromJson(json);
  }
}

/// @nodoc
const $Incomes = _$IncomesTearOff();

/// @nodoc
mixin _$Incomes {
  double get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get serie => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomesCopyWith<Incomes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomesCopyWith<$Res> {
  factory $IncomesCopyWith(Incomes value, $Res Function(Incomes) then) =
      _$IncomesCopyWithImpl<$Res>;
  $Res call({double value, String label, int serie});
}

/// @nodoc
class _$IncomesCopyWithImpl<$Res> implements $IncomesCopyWith<$Res> {
  _$IncomesCopyWithImpl(this._value, this._then);

  final Incomes _value;
  // ignore: unused_field
  final $Res Function(Incomes) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? label = freezed,
    Object? serie = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      serie: serie == freezed
          ? _value.serie
          : serie // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$IncomesCopyWith<$Res> implements $IncomesCopyWith<$Res> {
  factory _$IncomesCopyWith(_Incomes value, $Res Function(_Incomes) then) =
      __$IncomesCopyWithImpl<$Res>;
  @override
  $Res call({double value, String label, int serie});
}

/// @nodoc
class __$IncomesCopyWithImpl<$Res> extends _$IncomesCopyWithImpl<$Res>
    implements _$IncomesCopyWith<$Res> {
  __$IncomesCopyWithImpl(_Incomes _value, $Res Function(_Incomes) _then)
      : super(_value, (v) => _then(v as _Incomes));

  @override
  _Incomes get _value => super._value as _Incomes;

  @override
  $Res call({
    Object? value = freezed,
    Object? label = freezed,
    Object? serie = freezed,
  }) {
    return _then(_Incomes(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      serie == freezed
          ? _value.serie
          : serie // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Incomes implements _Incomes {
  const _$_Incomes(this.value, this.label, this.serie);

  factory _$_Incomes.fromJson(Map<String, dynamic> json) =>
      _$$_IncomesFromJson(json);

  @override
  final double value;
  @override
  final String label;
  @override
  final int serie;

  @override
  String toString() {
    return 'Incomes(value: $value, label: $label, serie: $serie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Incomes &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.serie, serie));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(serie));

  @JsonKey(ignore: true)
  @override
  _$IncomesCopyWith<_Incomes> get copyWith =>
      __$IncomesCopyWithImpl<_Incomes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncomesToJson(this);
  }
}

abstract class _Incomes implements Incomes {
  const factory _Incomes(double value, String label, int serie) = _$_Incomes;

  factory _Incomes.fromJson(Map<String, dynamic> json) = _$_Incomes.fromJson;

  @override
  double get value;
  @override
  String get label;
  @override
  int get serie;
  @override
  @JsonKey(ignore: true)
  _$IncomesCopyWith<_Incomes> get copyWith =>
      throw _privateConstructorUsedError;
}
