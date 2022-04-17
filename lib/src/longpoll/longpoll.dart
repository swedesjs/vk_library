import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vk_library/vk_library.dart';

export 'models.dart';

part 'group_longpoll.dart';

part 'user_longpoll.dart';

/// Main long poll class
abstract class Longpoll<T> {
  final StreamController<T> _updateController;

  bool _isPolling = false;

  /// Is listening running
  bool get isPolling => _isPolling;

  Longpoll() : _updateController = StreamController();

  /// Returns a stream.
  Stream<T> onUpdate() => _updateController.stream;

  /// Adds a new event.
  void emitUpdate(T update) => _updateController.add(update);

  /// Starts listening for new updates
  Future<void> start();

  // ignore: unused_declaration
  Future<void> _startPolling(String key, String server, String ts);

  /// Stop listening for new updates
  Future<void> stop() {
    if (_isPolling) {
      _isPolling = false;
      _updateController.close();
    }

    return Future.value();
  }

  /// Returns new message events
  Stream<Object> onMessageNew();
}
