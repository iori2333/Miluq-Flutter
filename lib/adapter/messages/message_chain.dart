import 'dart:collection';

import 'package:miluq/adapter/messages/message.dart';

class MessageChain with ListMixin<Message> {
  final List<Message> _messages;

  MessageChain(this._messages);

  @override
  int get length => _messages.length;

  @override
  set length(value) => _messages.length;

  @override
  Message operator [](int index) {
    return _messages[index];
  }

  @override
  void operator []=(int index, Message value) {
    _messages[index] = value;
  }

  MessageChain append(Message message) {
    _messages.add(message);
    return this;
  }

  MessageChain concat(List<Message> messages) {
    messages.forEach(_messages.add);
    return this;
  }

  List<Map<String, dynamic>> toJson() {
    return _messages.map((e) {
      final send = e.toJson();
      send['type'] = e.type;
      return send;
    }).toList();
  }
}
