// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupList _$GroupListFromJson(Map<String, dynamic> json) => GroupList(
      code: json['code'] as int,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Group.fromJson(e))
          .toList(),
    );

Map<String, dynamic> _$GroupListToJson(GroupList instance) => <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
