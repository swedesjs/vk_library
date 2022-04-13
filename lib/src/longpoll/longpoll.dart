import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vk_library/vk_library.dart';

export 'models.dart';

part 'group_longpoll.dart';

/// Main long poll class
abstract class Longpoll<T> {
  final StreamController<T> _updateController;

  Longpoll() : _updateController = StreamController();

  /// Returns a stream.
  Stream<T> onUpdate() => _updateController.stream;

  /// Adds a new event.
  void emitUpdate(T update) => _updateController.add(update);

  /// Starts listening for new updates
  Future<void> start();

  /// Stop listening for new updates
  Future<void> stop();
}
