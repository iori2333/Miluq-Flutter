import 'package:flutter/material.dart';
import 'package:miluq/router/router.dart';
import 'package:simple_moment/simple_moment.dart';

class MessageTile extends StatelessWidget {
  final int id;
  final String name;
  final String content;
  final DateTime dateTime;
  final Widget? avatar;
  final String type;

  const MessageTile(
      {required this.id,
      required this.name,
      required this.content,
      required this.dateTime,
      this.avatar,
      required this.type,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = Moment.now();
    return ListTile(
      leading: avatar,
      title: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text(content, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(now.from(dateTime).toString()),
      onTap: () {
        $router.navigateTo(context, '/$type/114514');
      },
    );
  }
}
