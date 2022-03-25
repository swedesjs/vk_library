import 'package:vk_library/src/api.dart';

class Storage {
  final API _api;

  Storage(this._api);

  Future<Map<String, dynamic>> get({
    String? key,
    dynamic keys,
    int? userId,
  }) =>
      _api.request('storage.get', {
        if (key != null) 'key': key,
        if (keys != null) 'keys': keys,
        if (userId != null) 'user_id': userId,
      });

  Future<Map<String, dynamic>> getKeys({
    int? userId,
    int? offset,
    int? count,
  }) =>
      _api.request('storage.getKeys', {
        if (userId != null) 'user_id': userId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> set({
    required String key,
    String? value,
    int? userId,
  }) =>
      _api.request('storage.set', {
        'key': key,
        if (value != null) 'value': value,
        if (userId != null) 'user_id': userId,
      });
}
