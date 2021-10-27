import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'plain.g.dart';

@JsonSerializable()
class Plain extends Message {
  String text;

  Plain({required this.text}) : super('Plain');

  factory Plain.fromJson(json) => _$PlainFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlainToJson(this);
}
