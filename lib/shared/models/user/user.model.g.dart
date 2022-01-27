// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      active: json['active'] as bool? ?? true,
      password: json['password'] as String?,
      role: json['role'] as String?,
      email: json['email'] as String? ?? "",
      customerId: json['customerId'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'password': instance.password,
      'role': instance.role,
      'email': instance.email,
      'customerId': instance.customerId,
    };
