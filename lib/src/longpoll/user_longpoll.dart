part of 'longpoll.dart';

/// User longpoll class
class UserLongpoll extends Longpoll<List<dynamic>> {
  final API _api;

  /// Additional response options
  final List<UserLongpollMode> mode;

  /// Sum of response option codes
  int get sumMode => mode.fold<int>(0, (previousValue, element) {
        return previousValue + _$EnumUserLongpollMode[element]!;
      });

  /// Waiting time
  final int wait;

  /// Long poll version
  final int version;

  UserLongpoll(
    this._api, {
    this.wait = 25,
    this.mode = const [
      UserLongpollMode.receiveAttachments,
      UserLongpollMode.setOfEvents,
      UserLongpollMode.friendBecameOnline,
      UserLongpollMode.returnRandomId,
    ],
    this.version = 10,
  }) {
    if (wait > 90) {
      throw UserLongpollException('Maximum value for timeout - 90');
    }
  }

  @override
  Future<void> start() {
    if (!_isPolling) {
      _isPolling = true;

      return _api.messages.getLongPollServer(lpVersion: version).then((value) {
        final res = value['response'];
        return _startPolling(res['key'], res['server'], res['ts'].toString());
      });
    } else {
      throw UserLongpollException('Longpoll is already running!');
    }
  }

  Future<void> _startPolling(String key, String server, String ts) {
    if (_isPolling) {
      Dio().get<Map<String, dynamic>>('https://$server', queryParameters: {
        'act': 'a_check',
        'key': key,
        'ts': ts,
        'wait': wait,
        'mode': sumMode,
        'version': version
      }).then((response) {
        final data = response.data!;

        for (final element in data['updates'] as List<dynamic>) {
          emitUpdate(element as List<dynamic>);
        }

        _startPolling(key, server, data['ts'].toString());
      });
    }

    return Future.value();
  }

  @override
  Stream<List> onMessageNew() => onUpdate().where((event) => event[0] == 4);
}

const _$EnumUserLongpollMode = {
  UserLongpollMode.receiveAttachments: 2,
  UserLongpollMode.setOfEvents: 8,
  UserLongpollMode.returnPts: 32,
  UserLongpollMode.friendBecameOnline: 64,
  UserLongpollMode.returnRandomId: 128,
  UserLongpollMode.businessNotice: 512
};

enum UserLongpollMode {
  /// Return attachments and additional message data (additional and attachments)
  receiveAttachments,

  /// Return data in 114, 115 and 119 events
  setOfEvents,

  /// Return pts
  returnPts,

  /// Return platform data in "online friend" event
  friendBecameOnline,

  /// Return random_id
  returnRandomId,

  /// Return business notifications
  businessNotice
}

class UserLongpollException implements Exception {
  final String message;

  UserLongpollException(this.message);

  @override
  String toString() => 'UserLongpollException: $message';
}
