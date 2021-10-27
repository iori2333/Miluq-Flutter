import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'at_all.g.dart';

@JsonSerializable()
class AtAll extends Message {
  AtAll() : super('AtAll');

  factory AtAll.fromJson(json) => _$AtAllFromJson(json);

  Map<String, dynamic> toJson() => _$AtAllToJson(this);
}
