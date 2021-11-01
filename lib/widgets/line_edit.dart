import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/logger/logger.dart';

class LineEdit extends StatelessWidget {
  final TextEditingController controller;

  const LineEdit({required this.controller, Key? key}) : super(key: key);

  void _submit() {
    if (controller.text.isEmpty) {
      return;
    }
    controller.clear();
    logger.i(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              autofocus: true,
              minLines: 1,
              maxLines: 6,
              decoration: const InputDecoration(
                hintText: 'Send a message',
                contentPadding: EdgeInsets.all(6),
              ),
              controller: controller,
              onSubmitted: (_) => _submit(),
            ),
          ),
          IconButton(
            splashRadius: 24,
            onPressed: () {},
            icon: const Icon(Icons.emoji_emotions_outlined),
          ),
          IconButton(
            splashRadius: 24,
            onPressed: _submit,
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
