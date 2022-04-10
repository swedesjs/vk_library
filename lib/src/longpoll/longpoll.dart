import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vk_library/vk_library.dart';

export 'models.dart';

abstract class Longpoll<T> {
  final StreamController<T> _updateController;

  Longpoll() : _updateController = StreamController();

  Stream<T> onUpdate() => _updateController.stream;

  void emitUpdate(T update) => _updateController.add(update);
}

class GroupLongpoll extends Longpoll<UpdateGroupLongpoll> {
  final API api;
  int? _groupId;

  int? get groupId => _groupId;

  final int wait;

  bool _isPolling = false;

  bool get isPolling => _isPolling;

  GroupLongpoll(this.api, {int? groupId, this.wait = 25}) : _groupId = groupId {
    if (wait > 90) {
      throw GroupLongpollException('Maximum value for timeout - 90');
    }
  }

  Future<void> start() async {
    if (!_isPolling) {
      _isPolling = true;

      if (_groupId == null) {
        final group = await api.groups.getById();
        _groupId = group['response'][0]['id'] as int;
      }

      final parameters = await api.groups.getLongPollServer(groupId: _groupId!);
      final response = parameters['response'];

      return _startPolling(response['key'], response['server'], response['ts']);
    } else {
      throw GroupLongpollException('');
    }
  }

  Future<void> stop() {
    if (_isPolling) {
      _isPolling = false;
    } else {
      throw GroupLongpollException('');
    }

    return Future.value();
  }

  Future<void> _startPolling(String key, String server, String ts) {
    if (_isPolling) {
      Dio().get<Map<String, dynamic>>(
        server,
        queryParameters: {'act': 'a_check', 'key': key, 'ts': ts, 'wait': wait},
      ).then((response) {
        (response.data!['updates'] as List<dynamic>).forEach((element) {
          emitUpdate(
            UpdateGroupLongpoll.fromJson(element as Map<String, dynamic>),
          );
        });

        _startPolling(key, server, response.data!['ts']);
      });
    }

    return Future.value();
  }

  Stream<MessageModel> onMessageNew() =>
      onUpdate().where((event) => event.type == 'message_new').map(
            (event) => MessageModel.fromJson(
                event.object['message'] as Map<String, dynamic>)
              ..clientInfo = event.object['client_info'],
          );
}

class GroupLongpollException implements Exception {
  final String message;

  GroupLongpollException(this.message);

  @override
  String toString() => 'GroupLongpollException: $message';
}
