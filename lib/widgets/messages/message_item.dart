import 'package:flutter/material.dart';
import 'package:miluq/router/path.dart';
import 'package:miluq/router/router.dart';
import 'package:simple_moment/simple_moment.dart';

class MessageItem extends StatelessWidget {
  final String name;
  final String content;
  final DateTime dateTime;
  final Widget? avatar;

  const MessageItem(
      {required this.name,
      required this.content,
      required this.dateTime,
      this.avatar,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = Moment.now();
    final route = MiluqRouter.instance;
    return ListTile(
      leading: avatar,
      title: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text(content, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(now.from(dateTime).toString()),
      onTap: () {
        route.push(MiluqRoutePath.page(id: 114514, type: RouteType.private));
      },
    );
  }
}
