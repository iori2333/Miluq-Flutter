// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Face _$FaceFromJson(Map<String, dynamic> json) => Face(
      faceId: json['faceId'] as int,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FaceToJson(Face instance) => <String, dynamic>{
      'faceId': instance.faceId,
      'name': instance.name,
    };
