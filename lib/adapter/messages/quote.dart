import 'package:miluq/adapter/messages/message.dart';
import 'package:miluq/adapter/messages/message_chain.dart';

class Quote extends Message {
  int id;
  int groupId;
  int senderId;
  int targetId;
  MessageChain origin;

  Quote(
      {required this.id,
      required this.groupId,
      required this.senderId,
      required this.targetId,
      required this.origin})
      : super('Quote');
}
