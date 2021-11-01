import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/widgets/chats/chat_list.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  String _text = '';

  @override
  void initState() {
    super.initState();
    _text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: const InputDecoration(
              labelText: 'Search Message',
              prefixIcon: Icon(Icons.search),
            ),
            onSubmitted: (value) => setState(() {
              _text = value;
            }),
          ),
        ),
        const Expanded(
          child: ChatList(),
        ),
      ],
    );
  }
}
