// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      age: json['age'] as int,
      level: json['level'] as int,
      sign: json['sign'] as String,
      sex: json['sex'] as String,
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'nickname': instance.nickname,
      'email': instance.email,
      'age': instance.age,
      'level': instance.level,
      'sign': instance.sign,
      'sex': instance.sex,
    };
