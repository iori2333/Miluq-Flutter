// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'websocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Command _$CommandFromJson(Map<String, dynamic> json) => Command(
      syncId: json['syncId'] as int,
      command: json['command'] as String,
      subCommand: json['subCommand'] as String?,
      content: json['content'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$CommandToJson(Command instance) => <String, dynamic>{
      'syncId': instance.syncId,
      'command': instance.command,
      'subCommand': instance.subCommand,
      'content': instance.content,
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      syncId: json['syncId'] as int,
      data: json['content'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'syncId': instance.syncId,
      'content': instance.data,
    };
