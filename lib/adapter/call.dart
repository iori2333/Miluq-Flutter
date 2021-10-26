import 'dart:convert';
import 'package:web_socket_channel/io.dart';

import 'package:miluq/logger/logger.dart';
import 'package:miluq/adapter/executors.dart';

class ApiCaller {
  static const _maxAwaits = 1 << 31 - 1;
  static const _serverSyncId = -1;
  static const _url = 'ws://localhost:8080/';

  final IOWebSocketChannel _channel;
  final Map<int, Executor> _executors;

  int _current;

  ApiCaller()
      : _channel = IOWebSocketChannel.connect(_url),
        _executors = {},
        _current = 0 {
    _channel.stream.listen((data) {
      Map<String, dynamic> json = jsonDecode(data);
      try {
        int syncId = json['syncId'];
        if (syncId != _serverSyncId) {
          _executors[syncId]!(json);
        }
      } catch (e) {
        logger.i('received response with invalid SyncId, ignoring', e);
        return;
      }
    });
  }

  /// An internal method to call a command with data and executor
  ///
  /// Each api call has a `SyncId`, which marks the sequence of the call.
  /// An executor is attached to a `SyncId` by adding it to a map.
  void _call(String command, dynamic data, Executor executor) {
    final send = {
      'syncId': _current,
      'command': command,
      'subcommand': null,
      'content': data,
    };
    _channel.sink.add(jsonEncode(send));
    _executors[_current] = executor;
    _current = (_current + 1) % _maxAwaits;
  }
}
