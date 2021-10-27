import 'package:miluq/adapter/messages/message_chain.dart';

abstract class Message {
  String type;

  Message(this.type);

  MessageChain get chained => MessageChain([this]);

  MessageChain operator +(Message other) {
    return MessageChain([this, other]);
  }
}
