import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/router/router.dart';

class NoticeItem {
  final String title;
  final String detail;
  final Widget? icon;
  final String? route;

  NoticeItem(
      {required this.title, required this.detail, this.icon, this.route});
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    this.onIgnore,
    this.onApprove,
    this.onDeny,
    required this.animation,
    required this.item,
  }) : super(key: key);

  final Animation<double> animation;
  final NoticeItem item;

  final VoidCallback? onIgnore;
  final VoidCallback? onApprove;
  final VoidCallback? onDeny;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ListTile(
              title: Text(
                item.title,
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
              subtitle: Text(
                item.detail,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: IconButton(
                onPressed: () {
                  if (item.route != null) {
                    $router.navigateTo(context, item.route!);
                  }
                },
                icon: item.icon ?? const Icon(Icons.person),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: onApprove,
                  label: const Text('Approve'),
                  icon: const Icon(Icons.check),
                ),
                TextButton.icon(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: onDeny,
                  label: const Text('Deny'),
                  icon: const Icon(Icons.clear),
                ),
                TextButton.icon(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: onIgnore,
                  label: const Text('Ignore'),
                  icon: const Icon(Icons.not_interested),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
