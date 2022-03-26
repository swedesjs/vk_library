import 'package:vk_library/src/api.dart';

class Storage {
  final API _api;

  Storage(this._api);

  /// Returns a value of variable with the name set by key parameter.
  Future<Map<String, dynamic>> get({
    String? key,
    List<String>? keys,
    int? userId,
  }) =>
      _api.request('storage.get', {
        if (key != null) 'key': key,
        if (keys != null) 'keys': keys.join(','),
        if (userId != null) 'user_id': userId,
      });

  /// Returns the names of all variables.
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

  /// Saves a value of variable with the name set by 'key' parameter.
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
