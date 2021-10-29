import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/logger/logger.dart';

class CardItem {
  final String title;
  final String detail;

  CardItem(this.title, this.detail);
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String detail;

  final void Function() onApprove;
  final void Function() onDeny;
  final void Function()? onIgnore;

  const NotificationCard(
      {required this.title,
      required this.detail,
      required this.onApprove,
      required this.onDeny,
      this.onIgnore,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(title),
            subtitle: Text(detail),
            trailing: IconButton(
              onPressed: onIgnore ?? () {},
              icon: const Icon(Icons.mark_chat_read),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Approve'),
            leading: const Icon(Icons.check),
            onTap: onApprove,
          ),
          ListTile(
            title: const Text('Deny'),
            leading: const Icon(Icons.block),
            onTap: onDeny,
          ),
        ],
      ),
    );
  }
}

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<CardItem> _items = [];
  final key = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    _items = [
      CardItem('title', 'detail'),
      CardItem('title', 'detail'),
      CardItem('title', 'detail'),
      CardItem('title', 'detail'),
    ];
  }

  void _removeItem(int index) {
    final item = _items.removeAt(index);
    key.currentState?.removeItem(
        index, (context, animation) => _builder(item, index, animation));
  }

  Widget _buildCard(int index, CardItem item) => NotificationCard(
        title: item.title,
        detail: item.detail,
        onApprove: () {
          logger.i('approve request');
          _removeItem(index);
        },
        onDeny: () {
          logger.i('deny request');
          _removeItem(index);
        },
        onIgnore: () => _removeItem(index),
      );

  Widget _builder(CardItem item, int index, Animation<double> animation) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: const Offset(0, 0),
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.fastLinearToSlowEaseIn,
            reverseCurve: Curves.fastLinearToSlowEaseIn,
          ),
        ),
        child: _buildCard(index, item),
      );

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: key,
      padding: const EdgeInsets.all(16.0),
      initialItemCount: _items.length,
      itemBuilder: (context, index, animation) {
        return _builder(_items[index], index, animation);
      },
    );
  }
}
