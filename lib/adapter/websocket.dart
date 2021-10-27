import 'package:json_annotation/json_annotation.dart';

part 'websocket.g.dart';

@JsonSerializable()
class Command {
  int syncId;
  String command;
  String? subCommand;
  Map<String, dynamic> content;

  Command(
      {required this.syncId,
      required this.command,
      this.subCommand,
      required this.content});

  factory Command.fromJson(json) => _$CommandFromJson(json);

  Map<String, dynamic> toJson() => _$CommandToJson(this);
}

@JsonSerializable()
class Response {
  int syncId;
  Map<String, dynamic> data;

  Response({required this.syncId, required this.data});

  factory Response.fromJson(json) => _$ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}
