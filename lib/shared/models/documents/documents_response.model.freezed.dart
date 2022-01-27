// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'documents_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentsResponse _$DocumentsResponseFromJson(Map<String, dynamic> json) {
  return _DocumentsResponse.fromJson(json);
}

/// @nodoc
class _$DocumentsResponseTearOff {
  const _$DocumentsResponseTearOff();

  _DocumentsResponse call(
      {List<Document> items = const [], int itemsLength = 0}) {
    return _DocumentsResponse(
      items: items,
      itemsLength: itemsLength,
    );
  }

  DocumentsResponse fromJson(Map<String, Object?> json) {
    return DocumentsResponse.fromJson(json);
  }
}

/// @nodoc
const $DocumentsResponse = _$DocumentsResponseTearOff();

/// @nodoc
mixin _$DocumentsResponse {
  List<Document> get items => throw _privateConstructorUsedError;
  int get itemsLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsResponseCopyWith<DocumentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsResponseCopyWith<$Res> {
  factory $DocumentsResponseCopyWith(
          DocumentsResponse value, $Res Function(DocumentsResponse) then) =
      _$DocumentsResponseCopyWithImpl<$Res>;
  $Res call({List<Document> items, int itemsLength});
}

/// @nodoc
class _$DocumentsResponseCopyWithImpl<$Res>
    implements $DocumentsResponseCopyWith<$Res> {
  _$DocumentsResponseCopyWithImpl(this._value, this._then);

  final DocumentsResponse _value;
  // ignore: unused_field
  final $Res Function(DocumentsResponse) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? itemsLength = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      itemsLength: itemsLength == freezed
          ? _value.itemsLength
          : itemsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DocumentsResponseCopyWith<$Res>
    implements $DocumentsResponseCopyWith<$Res> {
  factory _$DocumentsResponseCopyWith(
          _DocumentsResponse value, $Res Function(_DocumentsResponse) then) =
      __$DocumentsResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Document> items, int itemsLength});
}

/// @nodoc
class __$DocumentsResponseCopyWithImpl<$Res>
    extends _$DocumentsResponseCopyWithImpl<$Res>
    implements _$DocumentsResponseCopyWith<$Res> {
  __$DocumentsResponseCopyWithImpl(
      _DocumentsResponse _value, $Res Function(_DocumentsResponse) _then)
      : super(_value, (v) => _then(v as _DocumentsResponse));

  @override
  _DocumentsResponse get _value => super._value as _DocumentsResponse;

  @override
  $Res call({
    Object? items = freezed,
    Object? itemsLength = freezed,
  }) {
    return _then(_DocumentsResponse(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      itemsLength: itemsLength == freezed
          ? _value.itemsLength
          : itemsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentsResponse implements _DocumentsResponse {
  const _$_DocumentsResponse({this.items = const [], this.itemsLength = 0});

  factory _$_DocumentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentsResponseFromJson(json);

  @JsonKey()
  @override
  final List<Document> items;
  @JsonKey()
  @override
  final int itemsLength;

  @override
  String toString() {
    return 'DocumentsResponse(items: $items, itemsLength: $itemsLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DocumentsResponse &&
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
  _$DocumentsResponseCopyWith<_DocumentsResponse> get copyWith =>
      __$DocumentsResponseCopyWithImpl<_DocumentsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentsResponseToJson(this);
  }
}

abstract class _DocumentsResponse implements DocumentsResponse {
  const factory _DocumentsResponse({List<Document> items, int itemsLength}) =
      _$_DocumentsResponse;

  factory _DocumentsResponse.fromJson(Map<String, dynamic> json) =
      _$_DocumentsResponse.fromJson;

  @override
  List<Document> get items;
  @override
  int get itemsLength;
  @override
  @JsonKey(ignore: true)
  _$DocumentsResponseCopyWith<_DocumentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
