import 'dart:convert';
import 'package:web_socket_channel/io.dart';

import 'package:miluq/adapter/executors.dart';
import 'package:miluq/logger/logger.dart';

abstract class Handler {}

class EventHandler {
  static const _url = 'ws://localhost:8080/event/';

  final IOWebSocketChannel _channel;
  final Map<String, Executor> _executors = {};

  EventHandler() : _channel = IOWebSocketChannel.connect(_url) {
    _channel.stream.listen((data) {
      try {
        _execute(data);
      } catch (e) {
        logger.w('unexpected event received', e);
      }
    });
  }

  void _execute(dynamic data) {
    Map<String, dynamic> json = jsonDecode(data);
    final type = json['type'];
    if (type is String && _executors.containsKey(type)) {
      _executors[type]!(json);
    }
  }
}
