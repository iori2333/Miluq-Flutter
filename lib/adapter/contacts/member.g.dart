// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) => GroupMember(
      id: json['id'] as int,
      memberName: json['memberName'] as String,
      specialTitle: json['specialTitle'] as String,
      joinTimestamp: json['joinTimestamp'] as int,
      lastSpeakTimestamp: json['lastSpeakTimestamp'] as int,
      muteTimeRemaining: json['muteTimeRemaining'] as int,
      group: Group.fromJson(json['group']),
    );

Map<String, dynamic> _$GroupMemberToJson(GroupMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberName': instance.memberName,
      'specialTitle': instance.specialTitle,
      'joinTimestamp': instance.joinTimestamp,
      'lastSpeakTimestamp': instance.lastSpeakTimestamp,
      'muteTimeRemaining': instance.muteTimeRemaining,
      'group': instance.group,
    };
