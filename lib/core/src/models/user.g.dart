// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      name: json['name'] as String,
      phone: json['phone'] as String,
      branch: json['branch'] as String,
      account: json['account'] as String,
      age: json['age'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      password: json['password'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'branch': instance.branch,
      'account': instance.account,
      'age': instance.age,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'password': instance.password,
      'created_at': instance.createdAt,
    };
