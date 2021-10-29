import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miluq/pages/index.dart';

class TestWidget extends StatelessWidget {
  final String _title;

  const TestWidget(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Center(child: Text(_title)),
    );
  }
}

typedef HandlerFunc = Widget? Function(
    BuildContext?, Map<String, List<String>>);

class Routes {
  static final Map<String, HandlerFunc> _routes = {
    '/': (context, params) => const IndexPage('Miluq'),
    '/private/:id': (context, params) {
      final id = params['id']?[0];
      if (id == null) {
        return null;
      }
      return TestWidget('Private $id');
    },
    '/group/:id': (context, params) => const TestWidget('Group'),
    '/settings': (context, params) => const TestWidget('Settings'),
    '/about': (context, params) => const TestWidget('About'),
  };

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler =
        Handler(handlerFunc: (context, params) => const TestWidget("NotFound"));
    _routes.forEach((path, handlerFunc) {
      router.define(
        path,
        handler: Handler(handlerFunc: handlerFunc),
        transitionType: TransitionType.cupertino,
      );
    });
  }
}
