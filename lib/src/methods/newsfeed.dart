import 'package:vk_library/vk_library.dart';

class Newsfeed {
  final API _api;

  Newsfeed(this._api);

  /// Prevents news from specified users and communities from appearing in the current user's newsfeed.
  Future<Map<String, dynamic>> addBan({
    List<int>? userIds,
    List<int>? groupIds,
  }) =>
      _api.request('newsfeed.addBan', {
        if (userIds != null) 'user_ids': userIds.join(','),
        if (groupIds != null) 'group_ids': groupIds.join(','),
      });

  /// Allows news from previously banned users and communities to be shown in the current user's newsfeed.
  Future<Map<String, dynamic>> deleteBan({
    List<int>? userIds,
    List<int>? groupIds,
  }) =>
      _api.request('newsfeed.deleteBan', {
        if (userIds != null) 'user_ids': userIds.join(','),
        if (groupIds != null) 'group_ids': groupIds.join(','),
      });

  Future<Map<String, dynamic>> deleteList({
    required int listId,
  }) =>
      _api.request('newsfeed.deleteList', {
        'list_id': listId,
      });

  /// Returns data required to show newsfeed for the current user.
  Future<Map<String, dynamic>> get({
    List<Object>? filters,
    bool? returnBanned,
    int? startTime,
    int? endTime,
    int? maxPhotos,
    String? sourceIds,
    String? startFrom,
    int? count,
    List<Object>? fields,
    String? section,
  }) =>
      _api.request('newsfeed.get', {
        if (filters != null) 'filters': filters.join(','),
        if (returnBanned != null) 'return_banned': returnBanned,
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (maxPhotos != null) 'max_photos': maxPhotos,
        if (sourceIds != null) 'source_ids': sourceIds,
        if (startFrom != null) 'start_from': startFrom,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
        if (section != null) 'section': section,
      });

  /// Returns a list of users and communities banned from the current user's newsfeed.
  Future<Map<String, dynamic>> getBanned({
    bool? extended,
    List<Object>? fields,
    NameCase? nameCase,
  }) =>
      _api.request('newsfeed.getBanned', {
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
      });

  /// Returns a list of comments in the current user's newsfeed.
  Future<Map<String, dynamic>> getComments({
    int? count,
    List<Object>? filters,
    String? reposts,
    int? startTime,
    int? endTime,
    int? lastCommentsCount,
    String? startFrom,
    List<Object>? fields,
  }) =>
      _api.request('newsfeed.getComments', {
        if (count != null) 'count': count,
        if (filters != null) 'filters': filters.join(','),
        if (reposts != null) 'reposts': reposts,
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (lastCommentsCount != null) 'last_comments_count': lastCommentsCount,
        if (startFrom != null) 'start_from': startFrom,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns a list of newsfeeds followed by the current user.
  Future<Map<String, dynamic>> getLists({
    List<int>? listIds,
    bool? extended,
  }) =>
      _api.request('newsfeed.getLists', {
        if (listIds != null) 'list_ids': listIds.join(','),
        if (extended != null) 'extended': extended,
      });

  /// Returns a list of posts on user walls in which the current user is mentioned.
  Future<Map<String, dynamic>> getMentions({
    int? ownerId,
    int? startTime,
    int? endTime,
    int? offset,
    int? count,
  }) =>
      _api.request('newsfeed.getMentions', {
        if (ownerId != null) 'owner_id': ownerId,
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// , Returns a list of newsfeeds recommended to the current user.
  Future<Map<String, dynamic>> getRecommended({
    int? startTime,
    int? endTime,
    int? maxPhotos,
    String? startFrom,
    int? count,
    List<Object>? fields,
  }) =>
      _api.request('newsfeed.getRecommended', {
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (maxPhotos != null) 'max_photos': maxPhotos,
        if (startFrom != null) 'start_from': startFrom,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns communities and users that current user is suggested to follow.
  Future<Map<String, dynamic>> getSuggestedSources({
    int? offset,
    int? count,
    bool? shuffle,
    List<Object>? fields,
  }) =>
      _api.request('newsfeed.getSuggestedSources', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (shuffle != null) 'shuffle': shuffle,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Hides an item from the newsfeed.
  Future<Map<String, dynamic>> ignoreItem({
    required String type,
    int? ownerId,
    int? itemId,
  }) =>
      _api.request('newsfeed.ignoreItem', {
        'type': type,
        if (ownerId != null) 'owner_id': ownerId,
        if (itemId != null) 'item_id': itemId,
      });

  /// Creates and edits user newsfeed lists
  Future<Map<String, dynamic>> saveList({
    int? listId,
    required String title,
    List<int>? sourceIds,
    bool? noReposts,
  }) =>
      _api.request('newsfeed.saveList', {
        if (listId != null) 'list_id': listId,
        'title': title,
        if (sourceIds != null) 'source_ids': sourceIds.join(','),
        if (noReposts != null) 'no_reposts': noReposts,
      });

  /// Returns search results by statuses.
  Future<Map<String, dynamic>> search({
    String? q,
    bool? extended,
    int? count,
    num? latitude,
    num? longitude,
    int? startTime,
    int? endTime,
    String? startFrom,
    List<Object>? fields,
  }) =>
      _api.request('newsfeed.search', {
        if (q != null) 'q': q,
        if (extended != null) 'extended': extended,
        if (count != null) 'count': count,
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (startFrom != null) 'start_from': startFrom,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns a hidden item to the newsfeed.
  Future<Map<String, dynamic>> unignoreItem({
    required String type,
    required int ownerId,
    required int itemId,
    String? trackCode,
  }) =>
      _api.request('newsfeed.unignoreItem', {
        'type': type,
        'owner_id': ownerId,
        'item_id': itemId,
        if (trackCode != null) 'track_code': trackCode,
      });

  /// Unsubscribes the current user from specified newsfeeds.
  Future<Map<String, dynamic>> unsubscribe({
    required String type,
    int? ownerId,
    required int itemId,
  }) =>
      _api.request('newsfeed.unsubscribe', {
        'type': type,
        if (ownerId != null) 'owner_id': ownerId,
        'item_id': itemId,
      });
}
