import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'dice.g.dart';

@JsonSerializable()
class Dice extends Message {
  int value;

  Dice({required this.value}) : super('Dice');

  factory Dice.fromJson(json) => _$DiceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DiceToJson(this);
}
