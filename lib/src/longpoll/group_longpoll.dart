part of 'longpoll.dart';

/// Longpoll class for bots
class GroupLongpoll extends Longpoll<UpdateGroupLongpoll> {
  final API _api;
  int? _groupId;

  /// Group Id.
  int? get groupId => _groupId;

  /// Waiting time
  final int wait;

  GroupLongpoll(this._api, {int? groupId, this.wait = 25})
      : _groupId = groupId {
    if (wait > 90) {
      throw GroupLongpollException('Maximum value for timeout - 90');
    }
  }

  @override
  Future<void> start() async {
    if (!_isPolling) {
      _isPolling = true;

      if (_groupId == null) {
        final group = await _api.groups.getById();
        _groupId = group['response'][0]['id'] as int;
      }

      return _api.groups.getLongPollServer(groupId: _groupId!).then((value) {
        final res = value['response'];

        return _startPolling(res['key'], res['server'], res['ts']);
      });
    } else {
      throw GroupLongpollException('Longpoll is already running!');
    }
  }

  @override
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

  @override
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
