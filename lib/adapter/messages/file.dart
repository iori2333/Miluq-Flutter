import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'file.g.dart';

@JsonSerializable()
class File extends Message {
  String name;
  String id;
  int size;

  File({required this.name, required this.id, required this.size})
      : super('File');

  factory File.fromJson(json) => _$FileFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FileToJson(this);
}
