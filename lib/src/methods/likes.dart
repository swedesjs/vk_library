import 'package:vk_library/src/api.dart';

class Likes {
  final API _api;

  Likes(this._api);

  /// Adds the specified object to the 'Likes' list of the current user.
  Future<Map<String, dynamic>> add({
    required String type,
    int? ownerId,
    required int itemId,
    String? accessKey,
  }) =>
      _api.request('likes.add', {
        'type': type,
        if (ownerId != null) 'owner_id': ownerId,
        'item_id': itemId,
        if (accessKey != null) 'access_key': accessKey,
      });

  /// Deletes the specified object from the 'Likes' list of the current user.
  Future<Map<String, dynamic>> delete({
    required String type,
    int? ownerId,
    required int itemId,
    String? accessKey,
  }) =>
      _api.request('likes.delete', {
        'type': type,
        if (ownerId != null) 'owner_id': ownerId,
        'item_id': itemId,
        if (accessKey != null) 'access_key': accessKey,
      });

  /// Returns a list of IDs of users who added the specified object to their 'Likes' list.
  Future<Map<String, dynamic>> getList({
    required String type,
    int? ownerId,
    int? itemId,
    String? pageUrl,
    String? filter,
    int? friendsOnly,
    bool? extended,
    int? offset,
    int? count,
    bool? skipOwn,
  }) =>
      _api.request('likes.getList', {
        'type': type,
        if (ownerId != null) 'owner_id': ownerId,
        if (itemId != null) 'item_id': itemId,
        if (pageUrl != null) 'page_url': pageUrl,
        if (filter != null) 'filter': filter,
        if (friendsOnly != null) 'friends_only': friendsOnly,
        if (extended != null) 'extended': extended,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (skipOwn != null) 'skip_own': skipOwn,
      });

  /// Checks for the object in the 'Likes' list of the specified user.
  Future<Map<String, dynamic>> isLiked({
    int? userId,
    required String type,
    int? ownerId,
    required int itemId,
  }) =>
      _api.request('likes.isLiked', {
        if (userId != null) 'user_id': userId,
        'type': type,
        if (ownerId != null) 'owner_id': ownerId,
        'item_id': itemId,
      });
}
