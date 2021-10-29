import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/widgets/messages/message_list.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
        const Expanded(child: MessageList()),
      ],
    );
  }
}
