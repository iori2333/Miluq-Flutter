// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      imageId: json['imageId'] as String?,
      url: json['url'] as String?,
      path: json['path'] as String?,
      base64: json['base64'] as String?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'imageId': instance.imageId,
      'url': instance.url,
      'path': instance.path,
      'base64': instance.base64,
    };

FlashImage _$FlashImageFromJson(Map<String, dynamic> json) => FlashImage(
      imageId: json['imageId'] as String?,
      url: json['url'] as String?,
      path: json['path'] as String?,
      base64: json['base64'] as String?,
    );

Map<String, dynamic> _$FlashImageToJson(FlashImage instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'url': instance.url,
      'path': instance.path,
      'base64': instance.base64,
    };
