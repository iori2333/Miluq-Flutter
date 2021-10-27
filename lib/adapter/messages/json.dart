import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'json.g.dart';

@JsonSerializable()
class Json extends Message {
  String json;

  Json({required this.json}) : super('Json');

  factory Json.fromJson(json) => _$JsonFromJson(json);

  Map<String, dynamic> toJson() => _$JsonToJson(this);
}
