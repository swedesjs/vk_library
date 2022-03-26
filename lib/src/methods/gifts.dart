import 'package:vk_library/src/api.dart';

class Gifts {
  final API _api;

  Gifts(this._api);

  /// Returns a list of user gifts.
  Future<Map<String, dynamic>> get({
    int? userId,
    int? count,
    int? offset,
  }) =>
      _api.request('gifts.get', {
        if (userId != null) 'user_id': userId,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
      });
}
