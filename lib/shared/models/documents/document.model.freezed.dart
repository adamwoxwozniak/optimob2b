// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
class _$DocumentTearOff {
  const _$DocumentTearOff();

  _Document call(
      {int id = 0,
      String number = "",
      String? sourceNumber,
      int buyerId = 1,
      int receiverId = 1,
      int payerId = 1,
      String customerName = "",
      required DateTime date,
      required DateTime paymentDate,
      required DateTime creationDate,
      int paymentFormId = 1,
      int bufor = 1,
      int correction = 0,
      int type = 0,
      double net = 0,
      double gross = 0,
      List<Product> elements = const [],
      Customer? buyer,
      Customer? receiver,
      Customer? payer}) {
    return _Document(
      id: id,
      number: number,
      sourceNumber: sourceNumber,
      buyerId: buyerId,
      receiverId: receiverId,
      payerId: payerId,
      customerName: customerName,
      date: date,
      paymentDate: paymentDate,
      creationDate: creationDate,
      paymentFormId: paymentFormId,
      bufor: bufor,
      correction: correction,
      type: type,
      net: net,
      gross: gross,
      elements: elements,
      buyer: buyer,
      receiver: receiver,
      payer: payer,
    );
  }

  Document fromJson(Map<String, Object?> json) {
    return Document.fromJson(json);
  }
}

/// @nodoc
const $Document = _$DocumentTearOff();

/// @nodoc
mixin _$Document {
  int get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String? get sourceNumber => throw _privateConstructorUsedError;
  int get buyerId => throw _privateConstructorUsedError;
  int get receiverId => throw _privateConstructorUsedError;
  int get payerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  int get paymentFormId => throw _privateConstructorUsedError;
  int get bufor => throw _privateConstructorUsedError;
  int get correction => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  double get net => throw _privateConstructorUsedError;
  double get gross => throw _privateConstructorUsedError;
  List<Product> get elements => throw _privateConstructorUsedError;
  Customer? get buyer => throw _privateConstructorUsedError;
  Customer? get receiver => throw _privateConstructorUsedError;
  Customer? get payer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String number,
      String? sourceNumber,
      int buyerId,
      int receiverId,
      int payerId,
      String customerName,
      DateTime date,
      DateTime paymentDate,
      DateTime creationDate,
      int paymentFormId,
      int bufor,
      int correction,
      int type,
      double net,
      double gross,
      List<Product> elements,
      Customer? buyer,
      Customer? receiver,
      Customer? payer});

  $CustomerCopyWith<$Res>? get buyer;
  $CustomerCopyWith<$Res>? get receiver;
  $CustomerCopyWith<$Res>? get payer;
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res> implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  final Document _value;
  // ignore: unused_field
  final $Res Function(Document) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? sourceNumber = freezed,
    Object? buyerId = freezed,
    Object? receiverId = freezed,
    Object? payerId = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
    Object? paymentDate = freezed,
    Object? creationDate = freezed,
    Object? paymentFormId = freezed,
    Object? bufor = freezed,
    Object? correction = freezed,
    Object? type = freezed,
    Object? net = freezed,
    Object? gross = freezed,
    Object? elements = freezed,
    Object? buyer = freezed,
    Object? receiver = freezed,
    Object? payer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      sourceNumber: sourceNumber == freezed
          ? _value.sourceNumber
          : sourceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerId: buyerId == freezed
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
      payerId: payerId == freezed
          ? _value.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentDate: paymentDate == freezed
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentFormId: paymentFormId == freezed
          ? _value.paymentFormId
          : paymentFormId // ignore: cast_nullable_to_non_nullable
              as int,
      bufor: bufor == freezed
          ? _value.bufor
          : bufor // ignore: cast_nullable_to_non_nullable
              as int,
      correction: correction == freezed
          ? _value.correction
          : correction // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      net: net == freezed
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as double,
      gross: gross == freezed
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as double,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      buyer: buyer == freezed
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Customer?,
      payer: payer == freezed
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ));
  }

  @override
  $CustomerCopyWith<$Res>? get buyer {
    if (_value.buyer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.buyer!, (value) {
      return _then(_value.copyWith(buyer: value));
    });
  }

  @override
  $CustomerCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }

  @override
  $CustomerCopyWith<$Res>? get payer {
    if (_value.payer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.payer!, (value) {
      return _then(_value.copyWith(payer: value));
    });
  }
}

/// @nodoc
abstract class _$DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$DocumentCopyWith(_Document value, $Res Function(_Document) then) =
      __$DocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String number,
      String? sourceNumber,
      int buyerId,
      int receiverId,
      int payerId,
      String customerName,
      DateTime date,
      DateTime paymentDate,
      DateTime creationDate,
      int paymentFormId,
      int bufor,
      int correction,
      int type,
      double net,
      double gross,
      List<Product> elements,
      Customer? buyer,
      Customer? receiver,
      Customer? payer});

  @override
  $CustomerCopyWith<$Res>? get buyer;
  @override
  $CustomerCopyWith<$Res>? get receiver;
  @override
  $CustomerCopyWith<$Res>? get payer;
}

/// @nodoc
class __$DocumentCopyWithImpl<$Res> extends _$DocumentCopyWithImpl<$Res>
    implements _$DocumentCopyWith<$Res> {
  __$DocumentCopyWithImpl(_Document _value, $Res Function(_Document) _then)
      : super(_value, (v) => _then(v as _Document));

  @override
  _Document get _value => super._value as _Document;

  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? sourceNumber = freezed,
    Object? buyerId = freezed,
    Object? receiverId = freezed,
    Object? payerId = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
    Object? paymentDate = freezed,
    Object? creationDate = freezed,
    Object? paymentFormId = freezed,
    Object? bufor = freezed,
    Object? correction = freezed,
    Object? type = freezed,
    Object? net = freezed,
    Object? gross = freezed,
    Object? elements = freezed,
    Object? buyer = freezed,
    Object? receiver = freezed,
    Object? payer = freezed,
  }) {
    return _then(_Document(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      sourceNumber: sourceNumber == freezed
          ? _value.sourceNumber
          : sourceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerId: buyerId == freezed
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
      payerId: payerId == freezed
          ? _value.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentDate: paymentDate == freezed
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentFormId: paymentFormId == freezed
          ? _value.paymentFormId
          : paymentFormId // ignore: cast_nullable_to_non_nullable
              as int,
      bufor: bufor == freezed
          ? _value.bufor
          : bufor // ignore: cast_nullable_to_non_nullable
              as int,
      correction: correction == freezed
          ? _value.correction
          : correction // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      net: net == freezed
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as double,
      gross: gross == freezed
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as double,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      buyer: buyer == freezed
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Customer?,
      payer: payer == freezed
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Document implements _Document {
  const _$_Document(
      {this.id = 0,
      this.number = "",
      this.sourceNumber,
      this.buyerId = 1,
      this.receiverId = 1,
      this.payerId = 1,
      this.customerName = "",
      required this.date,
      required this.paymentDate,
      required this.creationDate,
      this.paymentFormId = 1,
      this.bufor = 1,
      this.correction = 0,
      this.type = 0,
      this.net = 0,
      this.gross = 0,
      this.elements = const [],
      this.buyer,
      this.receiver,
      this.payer});

  factory _$_Document.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String number;
  @override
  final String? sourceNumber;
  @JsonKey()
  @override
  final int buyerId;
  @JsonKey()
  @override
  final int receiverId;
  @JsonKey()
  @override
  final int payerId;
  @JsonKey()
  @override
  final String customerName;
  @override
  final DateTime date;
  @override
  final DateTime paymentDate;
  @override
  final DateTime creationDate;
  @JsonKey()
  @override
  final int paymentFormId;
  @JsonKey()
  @override
  final int bufor;
  @JsonKey()
  @override
  final int correction;
  @JsonKey()
  @override
  final int type;
  @JsonKey()
  @override
  final double net;
  @JsonKey()
  @override
  final double gross;
  @JsonKey()
  @override
  final List<Product> elements;
  @override
  final Customer? buyer;
  @override
  final Customer? receiver;
  @override
  final Customer? payer;

  @override
  String toString() {
    return 'Document(id: $id, number: $number, sourceNumber: $sourceNumber, buyerId: $buyerId, receiverId: $receiverId, payerId: $payerId, customerName: $customerName, date: $date, paymentDate: $paymentDate, creationDate: $creationDate, paymentFormId: $paymentFormId, bufor: $bufor, correction: $correction, type: $type, net: $net, gross: $gross, elements: $elements, buyer: $buyer, receiver: $receiver, payer: $payer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Document &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.sourceNumber, sourceNumber) &&
            const DeepCollectionEquality().equals(other.buyerId, buyerId) &&
            const DeepCollectionEquality()
                .equals(other.receiverId, receiverId) &&
            const DeepCollectionEquality().equals(other.payerId, payerId) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.paymentDate, paymentDate) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality()
                .equals(other.paymentFormId, paymentFormId) &&
            const DeepCollectionEquality().equals(other.bufor, bufor) &&
            const DeepCollectionEquality()
                .equals(other.correction, correction) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.net, net) &&
            const DeepCollectionEquality().equals(other.gross, gross) &&
            const DeepCollectionEquality().equals(other.elements, elements) &&
            const DeepCollectionEquality().equals(other.buyer, buyer) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.payer, payer));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(number),
        const DeepCollectionEquality().hash(sourceNumber),
        const DeepCollectionEquality().hash(buyerId),
        const DeepCollectionEquality().hash(receiverId),
        const DeepCollectionEquality().hash(payerId),
        const DeepCollectionEquality().hash(customerName),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(paymentDate),
        const DeepCollectionEquality().hash(creationDate),
        const DeepCollectionEquality().hash(paymentFormId),
        const DeepCollectionEquality().hash(bufor),
        const DeepCollectionEquality().hash(correction),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(net),
        const DeepCollectionEquality().hash(gross),
        const DeepCollectionEquality().hash(elements),
        const DeepCollectionEquality().hash(buyer),
        const DeepCollectionEquality().hash(receiver),
        const DeepCollectionEquality().hash(payer)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DocumentCopyWith<_Document> get copyWith =>
      __$DocumentCopyWithImpl<_Document>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentToJson(this);
  }
}

abstract class _Document implements Document {
  const factory _Document(
      {int id,
      String number,
      String? sourceNumber,
      int buyerId,
      int receiverId,
      int payerId,
      String customerName,
      required DateTime date,
      required DateTime paymentDate,
      required DateTime creationDate,
      int paymentFormId,
      int bufor,
      int correction,
      int type,
      double net,
      double gross,
      List<Product> elements,
      Customer? buyer,
      Customer? receiver,
      Customer? payer}) = _$_Document;

  factory _Document.fromJson(Map<String, dynamic> json) = _$_Document.fromJson;

  @override
  int get id;
  @override
  String get number;
  @override
  String? get sourceNumber;
  @override
  int get buyerId;
  @override
  int get receiverId;
  @override
  int get payerId;
  @override
  String get customerName;
  @override
  DateTime get date;
  @override
  DateTime get paymentDate;
  @override
  DateTime get creationDate;
  @override
  int get paymentFormId;
  @override
  int get bufor;
  @override
  int get correction;
  @override
  int get type;
  @override
  double get net;
  @override
  double get gross;
  @override
  List<Product> get elements;
  @override
  Customer? get buyer;
  @override
  Customer? get receiver;
  @override
  Customer? get payer;
  @override
  @JsonKey(ignore: true)
  _$DocumentCopyWith<_Document> get copyWith =>
      throw _privateConstructorUsedError;
}
