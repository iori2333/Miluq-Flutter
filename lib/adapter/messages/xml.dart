import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'xml.g.dart';

@JsonSerializable()
class Xml extends Message {
  String xml;

  Xml({required this.xml}) : super('Xml');

  factory Xml.fromJson(json) => _$XmlFromJson(json);

  Map<String, dynamic> toJson() => _$XmlToJson(this);
}
