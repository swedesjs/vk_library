import 'package:vk_library/src/api.dart';

class Newsfeed {
  final API _api;

  Newsfeed(this._api);

  Future<Map<String, dynamic>> addBan({
    dynamic userIds,
    dynamic groupIds,
  }) =>
      _api.request('newsfeed.addBan', {
        if (userIds != null) 'user_ids': userIds,
        if (groupIds != null) 'group_ids': groupIds,
      });

  Future<Map<String, dynamic>> deleteBan({
    dynamic userIds,
    dynamic groupIds,
  }) =>
      _api.request('newsfeed.deleteBan', {
        if (userIds != null) 'user_ids': userIds,
        if (groupIds != null) 'group_ids': groupIds,
      });

  Future<Map<String, dynamic>> deleteList({
    required int listId,
  }) =>
      _api.request('newsfeed.deleteList', {
        'list_id': listId,
      });

  Future<Map<String, dynamic>> get({
    dynamic filters,
    bool? returnBanned,
    int? startTime,
    int? endTime,
    int? maxPhotos,
    String? sourceIds,
    String? startFrom,
    int? count,
    dynamic fields,
    String? section,
  }) =>
      _api.request('newsfeed.get', {
        if (filters != null) 'filters': filters,
        if (returnBanned != null) 'return_banned': returnBanned,
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (maxPhotos != null) 'max_photos': maxPhotos,
        if (sourceIds != null) 'source_ids': sourceIds,
        if (startFrom != null) 'start_from': startFrom,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields,
        if (section != null) 'section': section,
      });

  Future<Map<String, dynamic>> getBanned({
    bool? extended,
    dynamic fields,
    String? nameCase,
  }) =>
      _api.request('newsfeed.getBanned', {
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields,
        if (nameCase != null) 'name_case': nameCase,
      });

  Future<Map<String, dynamic>> getComments({
    int? count,
    dynamic filters,
    String? reposts,
    int? startTime,
    int? endTime,
    int? lastCommentsCount,
    String? startFrom,
    dynamic fields,
  }) =>
      _api.request('newsfeed.getComments', {
        if (count != null) 'count': count,
        if (filters != null) 'filters': filters,
        if (reposts != null) 'reposts': reposts,
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (lastCommentsCount != null) 'last_comments_count': lastCommentsCount,
        if (startFrom != null) 'start_from': startFrom,
        if (fields != null) 'fields': fields,
      });

  Future<Map<String, dynamic>> getLists({
    dynamic listIds,
    bool? extended,
  }) =>
      _api.request('newsfeed.getLists', {
        if (listIds != null) 'list_ids': listIds,
        if (extended != null) 'extended': extended,
      });

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

  Future<Map<String, dynamic>> getRecommended({
    int? startTime,
    int? endTime,
    int? maxPhotos,
    String? startFrom,
    int? count,
    dynamic fields,
  }) =>
      _api.request('newsfeed.getRecommended', {
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (maxPhotos != null) 'max_photos': maxPhotos,
        if (startFrom != null) 'start_from': startFrom,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields,
      });

  Future<Map<String, dynamic>> getSuggestedSources({
    int? offset,
    int? count,
    bool? shuffle,
    dynamic fields,
  }) =>
      _api.request('newsfeed.getSuggestedSources', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (shuffle != null) 'shuffle': shuffle,
        if (fields != null) 'fields': fields,
      });

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

  Future<Map<String, dynamic>> saveList({
    int? listId,
    required String title,
    dynamic sourceIds,
    bool? noReposts,
  }) =>
      _api.request('newsfeed.saveList', {
        if (listId != null) 'list_id': listId,
        'title': title,
        if (sourceIds != null) 'source_ids': sourceIds,
        if (noReposts != null) 'no_reposts': noReposts,
      });

  Future<Map<String, dynamic>> search({
    String? q,
    bool? extended,
    int? count,
    num? latitude,
    num? longitude,
    int? startTime,
    int? endTime,
    String? startFrom,
    dynamic fields,
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
        if (fields != null) 'fields': fields,
      });

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
