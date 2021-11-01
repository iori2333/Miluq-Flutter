import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:miluq/pages/index.dart';
import 'package:miluq/router/router.dart';
import 'package:miluq/store/theme.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  final List<PageItem> pages;

  final void Function(int) onTap;

  const AppDrawer({required this.pages, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                controller: ScrollController(),
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: context.watch<MiluqTheme>().color,
                    ),
                    child: const Text('Header'),
                  ),
                  ...pages.map((e) {
                    return ListTile(
                      title: Text(e.name),
                      leading: e.icon,
                      onTap: () {
                        onTap(pages.indexOf(e));
                        Navigator.pop(context);
                      },
                    );
                  }),
                ],
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Column(
                children: <Widget>[
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.pop(context);
                      $router.navigateTo(context, '/settings');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text('About Miluq'),
                    onTap: () {
                      Navigator.pop(context);
                      $router.navigateTo(context, '/about');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
