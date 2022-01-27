// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) {
  return _ProductsResponse.fromJson(json);
}

/// @nodoc
class _$ProductsResponseTearOff {
  const _$ProductsResponseTearOff();

  _ProductsResponse call(
      {List<Product> items = const [], int itemsLength = 0}) {
    return _ProductsResponse(
      items: items,
      itemsLength: itemsLength,
    );
  }

  ProductsResponse fromJson(Map<String, Object?> json) {
    return ProductsResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductsResponse = _$ProductsResponseTearOff();

/// @nodoc
mixin _$ProductsResponse {
  List<Product> get items => throw _privateConstructorUsedError;
  int get itemsLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsResponseCopyWith<ProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
          ProductsResponse value, $Res Function(ProductsResponse) then) =
      _$ProductsResponseCopyWithImpl<$Res>;
  $Res call({List<Product> items, int itemsLength});
}

/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._value, this._then);

  final ProductsResponse _value;
  // ignore: unused_field
  final $Res Function(ProductsResponse) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? itemsLength = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      itemsLength: itemsLength == freezed
          ? _value.itemsLength
          : itemsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductsResponseCopyWith<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  factory _$ProductsResponseCopyWith(
          _ProductsResponse value, $Res Function(_ProductsResponse) then) =
      __$ProductsResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> items, int itemsLength});
}

/// @nodoc
class __$ProductsResponseCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res>
    implements _$ProductsResponseCopyWith<$Res> {
  __$ProductsResponseCopyWithImpl(
      _ProductsResponse _value, $Res Function(_ProductsResponse) _then)
      : super(_value, (v) => _then(v as _ProductsResponse));

  @override
  _ProductsResponse get _value => super._value as _ProductsResponse;

  @override
  $Res call({
    Object? items = freezed,
    Object? itemsLength = freezed,
  }) {
    return _then(_ProductsResponse(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      itemsLength: itemsLength == freezed
          ? _value.itemsLength
          : itemsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsResponse implements _ProductsResponse {
  const _$_ProductsResponse({this.items = const [], this.itemsLength = 0});

  factory _$_ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsResponseFromJson(json);

  @JsonKey()
  @override
  final List<Product> items;
  @JsonKey()
  @override
  final int itemsLength;

  @override
  String toString() {
    return 'ProductsResponse(items: $items, itemsLength: $itemsLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsResponse &&
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
  _$ProductsResponseCopyWith<_ProductsResponse> get copyWith =>
      __$ProductsResponseCopyWithImpl<_ProductsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsResponseToJson(this);
  }
}

abstract class _ProductsResponse implements ProductsResponse {
  const factory _ProductsResponse({List<Product> items, int itemsLength}) =
      _$_ProductsResponse;

  factory _ProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductsResponse.fromJson;

  @override
  List<Product> get items;
  @override
  int get itemsLength;
  @override
  @JsonKey(ignore: true)
  _$ProductsResponseCopyWith<_ProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
