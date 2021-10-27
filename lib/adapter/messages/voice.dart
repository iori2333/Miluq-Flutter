import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'voice.g.dart';

@JsonSerializable()
class Voice extends Message {
  String? voiceId;
  String? url;
  String? path;
  String? base64;
  int? length;

  Voice({this.voiceId, this.url, this.path, this.base64, this.length})
      : super('Voice');

  factory Voice.fromJson(json) => _$VoiceFromJson(json);

  Map<String, dynamic> toJson() => _$VoiceToJson(this);
}
