import 'package:vk_library/src/api.dart';

class Apps {
  final API _api;

  Apps(this._api);

  /// Deletes all request notifications from the current app.
  Future<Map<String, dynamic>> deleteAppRequests() =>
      _api.request('apps.deleteAppRequests');

  /// Returns applications data.
  Future<Map<String, dynamic>> get({
    int? appId,
    List<String>? appIds,
    String? platform,
    bool? extended,
    bool? returnFriends,
    List<Object>? fields,
    String? nameCase,
  }) =>
      _api.request('apps.get', {
        if (appId != null) 'app_id': appId,
        if (appIds != null) 'app_ids': appIds.join(','),
        if (platform != null) 'platform': platform,
        if (extended != null) 'extended': extended,
        if (returnFriends != null) 'return_friends': returnFriends,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
      });

  /// Returns a list of applications (apps) available to users in the App Catalog.
  Future<Map<String, dynamic>> getCatalog({
    String? sort,
    int? offset,
    required int count,
    String? platform,
    bool? extended,
    bool? returnFriends,
    List<Object>? fields,
    String? nameCase,
    String? q,
    int? genreId,
    String? filter,
  }) =>
      _api.request('apps.getCatalog', {
        if (sort != null) 'sort': sort,
        if (offset != null) 'offset': offset,
        'count': count,
        if (platform != null) 'platform': platform,
        if (extended != null) 'extended': extended,
        if (returnFriends != null) 'return_friends': returnFriends,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
        if (q != null) 'q': q,
        if (genreId != null) 'genre_id': genreId,
        if (filter != null) 'filter': filter,
      });

  /// Creates friends list for requests and invites in current app.
  Future<Map<String, dynamic>> getFriendsList({
    bool? extended,
    int? count,
    int? offset,
    String? type,
    List<Object>? fields,
  }) =>
      _api.request('apps.getFriendsList', {
        if (extended != null) 'extended': extended,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (type != null) 'type': type,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns players rating in the game.
  Future<Map<String, dynamic>> getLeaderboard({
    required String type,
    bool? global,
    bool? extended,
  }) =>
      _api.request('apps.getLeaderboard', {
        'type': type,
        if (global != null) 'global': global,
        if (extended != null) 'extended': extended,
      });

  /// Returns policies and terms given to a mini app.
  Future<Map<String, dynamic>> getMiniAppPolicies({
    required int appId,
  }) =>
      _api.request('apps.getMiniAppPolicies', {
        'app_id': appId,
      });

  /// Returns scopes for auth
  Future<Map<String, dynamic>> getScopes({
    String? type,
  }) =>
      _api.request('apps.getScopes', {
        if (type != null) 'type': type,
      });

  /// Returns user score in app
  Future<Map<String, dynamic>> getScore({
    required int userId,
  }) =>
      _api.request('apps.getScore', {
        'user_id': userId,
      });

  Future<Map<String, dynamic>> promoHasActiveGift({
    required int promoId,
    int? userId,
  }) =>
      _api.request('apps.promoHasActiveGift', {
        'promo_id': promoId,
        if (userId != null) 'user_id': userId,
      });

  Future<Map<String, dynamic>> promoUseGift({
    required int promoId,
    int? userId,
  }) =>
      _api.request('apps.promoUseGift', {
        'promo_id': promoId,
        if (userId != null) 'user_id': userId,
      });

  /// Sends a request to another user in an app that uses VK authorization.
  Future<Map<String, dynamic>> sendRequest({
    required int userId,
    String? text,
    String? type,
    String? name,
    String? key,
    bool? separate,
  }) =>
      _api.request('apps.sendRequest', {
        'user_id': userId,
        if (text != null) 'text': text,
        if (type != null) 'type': type,
        if (name != null) 'name': name,
        if (key != null) 'key': key,
        if (separate != null) 'separate': separate,
      });
}
