import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:miluq/router/page.dart';
import 'package:miluq/router/path.dart';
import 'package:miluq/pages/index.dart';

class MiluqRouter extends RouterDelegate<MiluqRoutePath>
    with PopNavigatorRouterDelegateMixin<MiluqRoutePath>, ChangeNotifier {
  static final _instance = MiluqRouter();

  static MiluqRouter get instance => _instance;

  final _home = const MiluqRoutePath.home();
  final List<MiluqRoutePath> _history = [];

  get history => _history;

  @override
  get currentConfiguration => _history.isEmpty ? _home : _history.last;

  void push(MiluqRoutePath route) {
    _history.add(route);
    notifyListeners();
  }

  void replace(MiluqRoutePath route) {
    if (_history.isNotEmpty) {
      _history.removeLast();
    }
    _history.add(route);
    notifyListeners();
  }

  void back() => _pop();

  void _pop() {
    if (_history.isEmpty) {
      return;
    }
    _history.removeLast();
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      transitionDelegate: const DefaultTransitionDelegate(),
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: ValueKey(_home.key),
          child: const IndexPage('Miluq'),
        ),
        for (final page in _history)
          MiluqPage(key: ValueKey(page.key), path: page)
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        _pop();
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MiluqRoutePath configuration) {
    _history
      ..clear()
      ..add(configuration);
    return SynchronousFuture<void>(null);
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();
}
