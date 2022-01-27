// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customers_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomersResponse _$CustomersResponseFromJson(Map<String, dynamic> json) {
  return _CustomersResponse.fromJson(json);
}

/// @nodoc
class _$CustomersResponseTearOff {
  const _$CustomersResponseTearOff();

  _CustomersResponse call(
      {List<Customer> items = const [], int itemsLength = 0}) {
    return _CustomersResponse(
      items: items,
      itemsLength: itemsLength,
    );
  }

  CustomersResponse fromJson(Map<String, Object?> json) {
    return CustomersResponse.fromJson(json);
  }
}

/// @nodoc
const $CustomersResponse = _$CustomersResponseTearOff();

/// @nodoc
mixin _$CustomersResponse {
  List<Customer> get items => throw _privateConstructorUsedError;
  int get itemsLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomersResponseCopyWith<CustomersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersResponseCopyWith<$Res> {
  factory $CustomersResponseCopyWith(
          CustomersResponse value, $Res Function(CustomersResponse) then) =
      _$CustomersResponseCopyWithImpl<$Res>;
  $Res call({List<Customer> items, int itemsLength});
}

/// @nodoc
class _$CustomersResponseCopyWithImpl<$Res>
    implements $CustomersResponseCopyWith<$Res> {
  _$CustomersResponseCopyWithImpl(this._value, this._then);

  final CustomersResponse _value;
  // ignore: unused_field
  final $Res Function(CustomersResponse) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? itemsLength = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      itemsLength: itemsLength == freezed
          ? _value.itemsLength
          : itemsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CustomersResponseCopyWith<$Res>
    implements $CustomersResponseCopyWith<$Res> {
  factory _$CustomersResponseCopyWith(
          _CustomersResponse value, $Res Function(_CustomersResponse) then) =
      __$CustomersResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Customer> items, int itemsLength});
}

/// @nodoc
class __$CustomersResponseCopyWithImpl<$Res>
    extends _$CustomersResponseCopyWithImpl<$Res>
    implements _$CustomersResponseCopyWith<$Res> {
  __$CustomersResponseCopyWithImpl(
      _CustomersResponse _value, $Res Function(_CustomersResponse) _then)
      : super(_value, (v) => _then(v as _CustomersResponse));

  @override
  _CustomersResponse get _value => super._value as _CustomersResponse;

  @override
  $Res call({
    Object? items = freezed,
    Object? itemsLength = freezed,
  }) {
    return _then(_CustomersResponse(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      itemsLength: itemsLength == freezed
          ? _value.itemsLength
          : itemsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomersResponse implements _CustomersResponse {
  const _$_CustomersResponse({this.items = const [], this.itemsLength = 0});

  factory _$_CustomersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomersResponseFromJson(json);

  @JsonKey()
  @override
  final List<Customer> items;
  @JsonKey()
  @override
  final int itemsLength;

  @override
  String toString() {
    return 'CustomersResponse(items: $items, itemsLength: $itemsLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomersResponse &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.itemsLength, itemsLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(itemsLength));

  @JsonKey(ignore: true)
  @override
  _$CustomersResponseCopyWith<_CustomersResponse> get copyWith =>
      __$CustomersResponseCopyWithImpl<_CustomersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomersResponseToJson(this);
  }
}

abstract class _CustomersResponse implements CustomersResponse {
  const factory _CustomersResponse({List<Customer> items, int itemsLength}) =
      _$_CustomersResponse;

  factory _CustomersResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomersResponse.fromJson;

  @override
  List<Customer> get items;
  @override
  int get itemsLength;
  @override
  @JsonKey(ignore: true)
  _$CustomersResponseCopyWith<_CustomersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
