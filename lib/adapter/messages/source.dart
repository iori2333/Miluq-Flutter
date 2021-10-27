import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'source.g.dart';

@JsonSerializable()
class Source extends Message {
  int time;
  int id;

  Source({required this.id, required this.time}) : super('Source');

  factory Source.fromJson(json) => _$SourceFromJson(json);

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
