import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'at.g.dart';

@JsonSerializable()
class At extends Message {
  int target;
  String display;

  At({
    required this.target,
    required this.display,
  }) : super('At');

  factory At.fromJson(json) => _$AtFromJson(json);

  Map<String, dynamic> toJson() => _$AtToJson(this);
}
