// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Voice _$VoiceFromJson(Map<String, dynamic> json) => Voice(
      voiceId: json['voiceId'] as String?,
      url: json['url'] as String?,
      path: json['path'] as String?,
      base64: json['base64'] as String?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$VoiceToJson(Voice instance) => <String, dynamic>{
      'voiceId': instance.voiceId,
      'url': instance.url,
      'path': instance.path,
      'base64': instance.base64,
      'length': instance.length,
    };
