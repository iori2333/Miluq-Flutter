import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'face.g.dart';

@JsonSerializable()
class Face extends Message {
  int faceId;
  String? name;

  Face({required this.faceId, this.name}) : super('Face');

  factory Face.fromJson(json) => _$FaceFromJson(json);

  Map<String, dynamic> toJson() => _$FaceToJson(this);
}
