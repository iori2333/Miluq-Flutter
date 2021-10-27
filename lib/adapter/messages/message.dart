import 'package:miluq/adapter/messages/message_chain.dart';

abstract class Message {
  final String type;

  Message(this.type);

  MessageChain get chained => MessageChain([this]);

  MessageChain operator +(Message other) {
    return MessageChain([this, other]);
  }

  Map<String, dynamic> toJson();
}
