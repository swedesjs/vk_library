import 'package:vk_library/src/api.dart';

class Status {
  final API _api;

  Status(this._api);

  Future<Map<String, dynamic>> get({
    int? userId,
    int? groupId,
  }) =>
      _api.request('status.get', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> set({
    String? text,
    int? groupId,
  }) =>
      _api.request('status.set', {
        if (text != null) 'text': text,
        if (groupId != null) 'group_id': groupId,
      });
}
