import 'package:vk_library/src/api.dart';

class Notifications {
  final API _api;

  Notifications(this._api);

  Future<Map<String, dynamic>> get({
    int? count,
    String? startFrom,
    List<String>? filters,
    int? startTime,
    int? endTime,
  }) =>
      _api.request('notifications.get', {
        if (count != null) 'count': count,
        if (startFrom != null) 'start_from': startFrom,
        if (filters != null) 'filters': filters.join(','),
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
      });

  Future<Map<String, dynamic>> markAsViewed() =>
      _api.request('notifications.markAsViewed');

  Future<Map<String, dynamic>> sendMessage({
    required List<int> userIds,
    required String message,
    String? fragment,
    int? groupId,
    int? randomId,
    String? sendingMode,
  }) =>
      _api.request('notifications.sendMessage', {
        'user_ids': userIds.join(','),
        'message': message,
        if (fragment != null) 'fragment': fragment,
        if (groupId != null) 'group_id': groupId,
        if (randomId != null) 'random_id': randomId,
        if (sendingMode != null) 'sending_mode': sendingMode,
      });
}
