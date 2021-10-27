import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/logger/logger.dart';
import 'package:miluq/widgets/drawer.dart';

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
          child: Text('Message page'),
        )),
    const PageItem(
        name: 'Contacts',
        icon: Icon(Icons.contacts),
        widget: Center(
          child: Text('Contacts page'),
        )),
    const PageItem(
        name: 'Notifications',
        icon: Icon(Icons.notifications),
        widget: Center(
          child: Text('Notification page'),
        )),
    const PageItem(
        name: 'Settings',
        icon: Icon(Icons.settings),
        widget: Center(
          child: Text('Settings page'),
        )),
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
        actions: [
          IconButton(
              onPressed: () => logger.i('Share button pressed'),
              icon: const Icon(Icons.more_vert)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_currentIndex == _pages.length - 1
            ? Icons.arrow_back
            : Icons.arrow_forward),
        onPressed: () => setState(() {
          _currentIndex = (_currentIndex + 1) % _pages.length;
          _pageController.jumpToPage(_currentIndex);
        }),
      ),
      drawer: const AppDrawer(),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setState(() {
          _currentIndex = index;
        }),
        children: _pages.map((e) => e.widget).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
          _pageController.jumpToPage(index);
        }),
        items: _pages
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.name))
            .toList(),
      ),
    );
  }
}
