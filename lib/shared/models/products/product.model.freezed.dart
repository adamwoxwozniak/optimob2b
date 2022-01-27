// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {int id = 0,
      int productId = 0,
      String? image,
      String code = "",
      String name = "",
      int groupId = 0,
      String? description,
      String ean = "",
      double price = 0,
      int quantity = 0,
      String unit = "",
      double valueNet = 0,
      double valueGross = 0}) {
    return _Product(
      id: id,
      productId: productId,
      image: image,
      code: code,
      name: name,
      groupId: groupId,
      description: description,
      ean: ean,
      price: price,
      quantity: quantity,
      unit: unit,
      valueNet: valueNet,
      valueGross: valueGross,
    );
  }

  Product fromJson(Map<String, Object?> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get groupId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get ean => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get valueNet => throw _privateConstructorUsedError;
  double get valueGross => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int productId,
      String? image,
      String code,
      String name,
      int groupId,
      String? description,
      String ean,
      double price,
      int quantity,
      String unit,
      double valueNet,
      double valueGross});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? image = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? groupId = freezed,
    Object? description = freezed,
    Object? ean = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? valueNet = freezed,
    Object? valueGross = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: ean == freezed
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      valueNet: valueNet == freezed
          ? _value.valueNet
          : valueNet // ignore: cast_nullable_to_non_nullable
              as double,
      valueGross: valueGross == freezed
          ? _value.valueGross
          : valueGross // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int productId,
      String? image,
      String code,
      String name,
      int groupId,
      String? description,
      String ean,
      double price,
      int quantity,
      String unit,
      double valueNet,
      double valueGross});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? image = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? groupId = freezed,
    Object? description = freezed,
    Object? ean = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? valueNet = freezed,
    Object? valueGross = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: ean == freezed
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      valueNet: valueNet == freezed
          ? _value.valueNet
          : valueNet // ignore: cast_nullable_to_non_nullable
              as double,
      valueGross: valueGross == freezed
          ? _value.valueGross
          : valueGross // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {this.id = 0,
      this.productId = 0,
      this.image,
      this.code = "",
      this.name = "",
      this.groupId = 0,
      this.description,
      this.ean = "",
      this.price = 0,
      this.quantity = 0,
      this.unit = "",
      this.valueNet = 0,
      this.valueGross = 0});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final int productId;
  @override
  final String? image;
  @JsonKey()
  @override
  final String code;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final int groupId;
  @override
  final String? description;
  @JsonKey()
  @override
  final String ean;
  @JsonKey()
  @override
  final double price;
  @JsonKey()
  @override
  final int quantity;
  @JsonKey()
  @override
  final String unit;
  @JsonKey()
  @override
  final double valueNet;
  @JsonKey()
  @override
  final double valueGross;

  @override
  String toString() {
    return 'Product(id: $id, productId: $productId, image: $image, code: $code, name: $name, groupId: $groupId, description: $description, ean: $ean, price: $price, quantity: $quantity, unit: $unit, valueNet: $valueNet, valueGross: $valueGross)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.ean, ean) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.valueNet, valueNet) &&
            const DeepCollectionEquality()
                .equals(other.valueGross, valueGross));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(ean),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(valueNet),
      const DeepCollectionEquality().hash(valueGross));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {int id,
      int productId,
      String? image,
      String code,
      String name,
      int groupId,
      String? description,
      String ean,
      double price,
      int quantity,
      String unit,
      double valueNet,
      double valueGross}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id;
  @override
  int get productId;
  @override
  String? get image;
  @override
  String get code;
  @override
  String get name;
  @override
  int get groupId;
  @override
  String? get description;
  @override
  String get ean;
  @override
  double get price;
  @override
  int get quantity;
  @override
  String get unit;
  @override
  double get valueNet;
  @override
  double get valueGross;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
