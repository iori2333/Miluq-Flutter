import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'app.g.dart';

@JsonSerializable()
class App extends Message {
  String content;

  App({required this.content}) : super('App');

  factory App.fromJson(json) => _$AppFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AppToJson(this);
}
