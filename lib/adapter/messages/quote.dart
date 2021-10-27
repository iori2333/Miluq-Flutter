import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/messages/message.dart';

part 'quote.g.dart';

@JsonSerializable()
class Quote extends Message {
  int id;
  int groupId;
  int senderId;
  int targetId;
  List<Map<String, dynamic>> origin;

  Quote(
      {required this.id,
      required this.groupId,
      required this.senderId,
      required this.targetId,
      required this.origin})
      : super('Quote');

  factory Quote.fromJson(json) => _$QuoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}
