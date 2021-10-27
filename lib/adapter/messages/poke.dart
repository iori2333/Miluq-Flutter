import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'poke.g.dart';

@JsonSerializable()
class Poke extends Message {
  String name;

  Poke({required this.name}) : super('Poke');

  factory Poke.fromJson(json) => _$PokeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PokeToJson(this);
}
