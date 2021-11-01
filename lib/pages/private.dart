import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/logger/logger.dart';
import 'package:miluq/widgets/line_edit.dart';

class PrivateChat extends StatefulWidget {
  final int id;

  const PrivateChat(this.id, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PrivateChatState();
}

class _PrivateChatState extends State<PrivateChat> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Private ${widget.id}',
          maxLines: 1,
          overflow: TextOverflow.fade,
        ),
        actions: [
          IconButton(
            onPressed: () {
              logger.i(widget.id);
            },
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Private page for ${widget.id}"),
            ),
          ),
          const Divider(height: 0),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: LineEdit(controller: _controller),
          ),
        ],
      ),
    );
  }
}
