import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:miluq/widgets/notices/notice_item.dart';

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
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: FadeTransition(
        opacity: animation,
        child: CardItem(
          animation: animation,
          item: _list[index],
          onIgnore: () => _remove(index),
          onApprove: () => _approve(index),
          onDeny: () => _deny(index),
        ),
      ),
    );
  }

  Widget _buildRemovedItem(
      NoticeItem item, BuildContext context, Animation<double> animation) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: FadeTransition(
        opacity: animation,
        child: CardItem(
          animation: animation,
          item: item,
        ),
      ),
    );
  }

  void _remove(int index) {
    _list.removeAt(index);
  }

  void _approve(int index) {}

  void _deny(int index) {}

  void _insert(NoticeItem item, {int index = 0}) {
    _list.insert(index, item);
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
