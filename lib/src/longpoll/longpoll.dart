import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vk_library/vk_library.dart';

export 'models.dart';

part 'group_longpoll.dart';

part 'user_longpoll.dart';

/// Helper class is used to add, listen for new update streams
abstract class AbstractUpdate<T> {
  final StreamController<T> _updateController;

  AbstractUpdate() : _updateController = StreamController();

  /// Returns a stream.
  Stream<T> onUpdate() => _updateController.stream;

  /// Adds a new event.
  void emitUpdate(T update) => _updateController.add(update);
}

/// Main long poll class
abstract class Longpoll<T> extends AbstractUpdate<T> {
  bool _isPolling = false;

  /// Is listening running
  bool get isPolling => _isPolling;

  /// Starts listening for new updates
  Future<void> start();

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
