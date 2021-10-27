import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'mirai_code.g.dart';

@JsonSerializable()
class MiraiCode extends Message {
  String code;

  MiraiCode({required this.code}) : super('MiraiCode');

  factory MiraiCode.fromJson(json) => _$MiraiCodeFromJson(json);

  Map<String, dynamic> toJson() => _$MiraiCodeToJson(this);
}
