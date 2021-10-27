import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'image.g.dart';

@JsonSerializable()
class Image extends Message {
  String? imageId;
  String? url;
  String? path;
  String? base64;

  Image({this.imageId, this.url, this.path, this.base64}) : super('Image');

  factory Image.fromJson(json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class FlashImage extends Message {
  String? imageId;
  String? url;
  String? path;
  String? base64;

  FlashImage({this.imageId, this.url, this.path, this.base64})
      : super('FlashImage');

  factory FlashImage.fromJson(json) => _$FlashImageFromJson(json);

  Map<String, dynamic> toJson() => _$FlashImageToJson(this);
}
