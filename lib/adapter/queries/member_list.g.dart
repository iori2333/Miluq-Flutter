// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberList _$MemberListFromJson(Map<String, dynamic> json) => MemberList(
      code: json['code'] as int,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => GroupMember.fromJson(e))
          .toList(),
    );

Map<String, dynamic> _$MemberListToJson(MemberList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
