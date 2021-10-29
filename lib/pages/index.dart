import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:miluq/router/router.dart';
import 'package:miluq/store/theme.dart';
import 'package:miluq/widgets/drawer.dart';
import 'package:miluq/widgets/messages/index.dart';
import 'package:miluq/widgets/notice_list.dart';

class PageItem {
  final String name;
  final Icon icon;
  final Widget widget;

  const PageItem({
    required this.name,
    required this.icon,
    required this.widget,
  });
}

class IndexPage extends StatefulWidget {
  final String title;

  const IndexPage(this.title, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final _pageController = PageController();
  final _pages = [
    const PageItem(
      name: 'Messages',
      icon: Icon(Icons.message),
      widget: Center(
        child: Messages(),
      ),
    ),
    const PageItem(
      name: 'Contacts',
      icon: Icon(Icons.contacts),
      widget: Center(
        child: Text('Contacts page'),
      ),
    ),
    const PageItem(
      name: 'Notifications',
      icon: Icon(Icons.notifications),
      widget: Center(
        child: NoticeList(),
      ),
    ),
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              $router.navigateTo(context, '/settings');
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              context.read<MiluqTheme>().setPrimaryColor(Colors.blue);
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: _pages[(_currentIndex + 1) % _pages.length].icon,
        onPressed: () => setState(() {
          _currentIndex = (_currentIndex + 1) % _pages.length;
          _pageController.jumpToPage(_currentIndex);
        }),
      ),
      drawer: AppDrawer(
        pages: _pages,
        onTap: _onTap,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setState(() {
          _currentIndex = index;
        }),
        children: _pages.map((e) => e.widget).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: _pages
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.name))
            .toList(),
      ),
    );
  }
}
