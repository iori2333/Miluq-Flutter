import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:miluq/router/router.dart';

class NoticeItem {
  final String title;
  final String detail;
  final Widget? icon;
  final String? route;

  NoticeItem(
      {required this.title, required this.detail, this.icon, this.route});
}

class NoticeList extends StatefulWidget {
  const NoticeList({Key? key}) : super(key: key);

  @override
  State<NoticeList> createState() => _NoticeListState();
}

class _NoticeListState extends State<NoticeList> {
  final _listKey = GlobalKey<AnimatedListState>();
  late ListModel<NoticeItem> _list;

  @override
  void initState() {
    super.initState();
    _list = ListModel<NoticeItem>(
      listKey: _listKey,
      initialItems: [
        NoticeItem(
          title: 'Kouji Dakoro',
          detail: 'Invites you to join ...',
          icon: const Icon(Icons.person),
          route: '/private/114514',
        ),
        NoticeItem(
          title: '114514',
          detail: '1919810',
        ),
        NoticeItem(
          title: '1234',
          detail: '22222',
        ),
      ],
      removedItemBuilder: _buildRemovedItem,
    );
  }

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: _list[index],
      onIgnore: () => _remove(index),
    );
  }

  Widget _buildRemovedItem(
      NoticeItem item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: item,
    );
  }

  void _remove(int index) {
    _list.removeAt(index);
  }

  void _insert(NoticeItem item) {
    _list.insert(0, item);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: AnimatedList(
        key: _listKey,
        initialItemCount: _list.length,
        itemBuilder: _buildItem,
      ),
    );
  }
}

typedef RemovedItemBuilder<T> = Widget Function(
    T item, BuildContext context, Animation<double> animation);

class ListModel<E> {
  ListModel({
    required this.listKey,
    required this.removedItemBuilder,
    Iterable<E>? initialItems,
  }) : _items = List<E>.from(initialItems ?? <E>[]);

  final GlobalKey<AnimatedListState> listKey;
  final RemovedItemBuilder<E> removedItemBuilder;
  final List<E> _items;

  AnimatedListState? get _animatedList => listKey.currentState;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  E removeAt(int index) {
    final E removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList!.removeItem(
        index,
        (BuildContext context, Animation<double> animation) {
          return removedItemBuilder(removedItem, context, animation);
        },
      );
    }
    return removedItem;
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
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
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: FadeTransition(
        opacity: animation,
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 10.0,
              right: 8.0,
            ),
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
                    TextButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: onApprove,
                      child: const Text('Approve'),
                    ),
                    TextButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: onDeny,
                      child: const Text('Deny'),
                    ),
                    TextButton(
                      onPressed: onIgnore,
                      child: const Text('Ignore'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
