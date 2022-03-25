import 'package:vk_library/src/api.dart';

class Donut {
  final API _api;

  Donut(this._api);

  Future<Map<String, dynamic>> getFriends({
    required int ownerId,
    int? offset,
    int? count,
    dynamic fields,
  }) =>
      _api.request('donut.getFriends', {
        'owner_id': ownerId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields,
      });

  Future<Map<String, dynamic>> getSubscription({
    required int ownerId,
  }) =>
      _api.request('donut.getSubscription', {
        'owner_id': ownerId,
      });

  Future<Map<String, dynamic>> getSubscriptions({
    dynamic fields,
    int? offset,
    int? count,
  }) =>
      _api.request('donut.getSubscriptions', {
        if (fields != null) 'fields': fields,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> isDon({
    required int ownerId,
  }) =>
      _api.request('donut.isDon', {
        'owner_id': ownerId,
      });
}
