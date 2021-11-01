import 'package:flutter/material.dart';
import 'package:miluq/widgets/chats/chat_tile.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime(2020, 10, 29, 12, 31),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'group',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
        MessageTile(
          id: 114514,
          name: '田所浩二',
          content: '哼哼哼',
          dateTime: DateTime.now(),
          avatar: const Icon(Icons.supervised_user_circle),
          type: 'private',
        ),
      ],
    );
  }
}
