import 'package:vk_library/src/api.dart';

class Status {
  final API _api;

  Status(this._api);

  /// Returns data required to show the status of a user or community.
  Future<Map<String, dynamic>> get({
    int? userId,
    int? groupId,
  }) =>
      _api.request('status.get', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
      });

  /// Sets a new status for the current user.
  Future<Map<String, dynamic>> set({
    String? text,
    int? groupId,
  }) =>
      _api.request('status.set', {
        if (text != null) 'text': text,
        if (groupId != null) 'group_id': groupId,
      });
}
