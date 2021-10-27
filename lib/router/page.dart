import 'package:flutter/material.dart';
import 'package:miluq/router/path.dart';
import 'package:miluq/pages/index.dart';

class _TestWidget extends StatelessWidget {
  final String name;

  const _TestWidget(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Text(name),
    );
  }
}

class MiluqPage extends Page {
  final MiluqRoutePath _path;

  MiluqPage({required LocalKey key, required MiluqRoutePath path})
      : _path = path,
        super(key: key, name: path.key);

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        switch (_path.type) {
          case RouteType.home:
            return const IndexPage('Miluq');
          case RouteType.group:
            return const _TestWidget('Group');
          case RouteType.private:
            return const _TestWidget('Private');
          case RouteType.settings:
            return const _TestWidget('Settings');
          case RouteType.error:
            return const _TestWidget('Error');
        }
      },
    );
  }
}
