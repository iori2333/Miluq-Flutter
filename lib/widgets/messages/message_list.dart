import 'package:flutter/material.dart';
import 'package:miluq/widgets/messages/message_item.dart';

class MessageList extends StatefulWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(4.0),
      children: <Widget>[
        MessageItem(
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime(2020, 10, 29, 12, 31),
          avatar: const Icon(Icons.supervised_user_circle),
        ),
        MessageItem(
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
        ),
        MessageItem(
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
        ),
        MessageItem(
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
        ),
        MessageItem(
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
        ),
      ],
    );
  }
}
