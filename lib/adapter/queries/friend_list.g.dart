// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendList _$FriendListFromJson(Map<String, dynamic> json) => FriendList(
      code: json['code'] as int,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Friend.fromJson(e))
          .toList(),
    );

Map<String, dynamic> _$FriendListToJson(FriendList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
