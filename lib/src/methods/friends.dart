import 'package:vk_library/src/api.dart';

class Friends {
  final API _api;

  Friends(this._api);

  Future<Map<String, dynamic>> add({
    int? userId,
    String? text,
    bool? follow,
  }) =>
      _api.request('friends.add', {
        if (userId != null) 'user_id': userId,
        if (text != null) 'text': text,
        if (follow != null) 'follow': follow,
      });

  Future<Map<String, dynamic>> addList({
    required String name,
    List<int>? userIds,
  }) =>
      _api.request('friends.addList', {
        'name': name,
        if (userIds != null) 'user_ids': userIds.join(','),
      });

  Future<Map<String, dynamic>> areFriends({
    required List<int> userIds,
    bool? needSign,
    bool? extended,
  }) =>
      _api.request('friends.areFriends', {
        'user_ids': userIds.join(','),
        if (needSign != null) 'need_sign': needSign,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> delete({
    int? userId,
  }) =>
      _api.request('friends.delete', {
        if (userId != null) 'user_id': userId,
      });

  Future<Map<String, dynamic>> deleteAllRequests() =>
      _api.request('friends.deleteAllRequests');

  Future<Map<String, dynamic>> deleteList({
    required int listId,
  }) =>
      _api.request('friends.deleteList', {
        'list_id': listId,
      });

  Future<Map<String, dynamic>> edit({
    required int userId,
    List<int>? listIds,
  }) =>
      _api.request('friends.edit', {
        'user_id': userId,
        if (listIds != null) 'list_ids': listIds.join(','),
      });

  Future<Map<String, dynamic>> editList({
    String? name,
    required int listId,
    List<int>? userIds,
    List<int>? addUserIds,
    List<int>? deleteUserIds,
  }) =>
      _api.request('friends.editList', {
        if (name != null) 'name': name,
        'list_id': listId,
        if (userIds != null) 'user_ids': userIds.join(','),
        if (addUserIds != null) 'add_user_ids': addUserIds.join(','),
        if (deleteUserIds != null) 'delete_user_ids': deleteUserIds.join(','),
      });

  Future<Map<String, dynamic>> get({
    int? userId,
    String? order,
    int? listId,
    int? count,
    int? offset,
    List<Object>? fields,
    String? nameCase,
    String? ref,
  }) =>
      _api.request('friends.get', {
        if (userId != null) 'user_id': userId,
        if (order != null) 'order': order,
        if (listId != null) 'list_id': listId,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
        if (ref != null) 'ref': ref,
      });

  Future<Map<String, dynamic>> getAppUsers() =>
      _api.request('friends.getAppUsers');

  Future<Map<String, dynamic>> getByPhones({
    List<String>? phones,
    List<Object>? fields,
  }) =>
      _api.request('friends.getByPhones', {
        if (phones != null) 'phones': phones.join(','),
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> getLists({
    int? userId,
    bool? returnSystem,
  }) =>
      _api.request('friends.getLists', {
        if (userId != null) 'user_id': userId,
        if (returnSystem != null) 'return_system': returnSystem,
      });

  Future<Map<String, dynamic>> getMutual({
    int? sourceUid,
    int? targetUid,
    List<int>? targetUids,
    String? order,
    int? count,
    int? offset,
  }) =>
      _api.request('friends.getMutual', {
        if (sourceUid != null) 'source_uid': sourceUid,
        if (targetUid != null) 'target_uid': targetUid,
        if (targetUids != null) 'target_uids': targetUids.join(','),
        if (order != null) 'order': order,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
      });

  Future<Map<String, dynamic>> getOnline({
    int? userId,
    int? listId,
    bool? onlineMobile,
    String? order,
    int? count,
    int? offset,
  }) =>
      _api.request('friends.getOnline', {
        if (userId != null) 'user_id': userId,
        if (listId != null) 'list_id': listId,
        if (onlineMobile != null) 'online_mobile': onlineMobile,
        if (order != null) 'order': order,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
      });

  Future<Map<String, dynamic>> getRecent({
    int? count,
  }) =>
      _api.request('friends.getRecent', {
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getRequests({
    int? offset,
    int? count,
    bool? extended,
    bool? needMutual,
    bool? out,
    int? sort,
    bool? needViewed,
    bool? suggested,
    String? ref,
    List<Object>? fields,
  }) =>
      _api.request('friends.getRequests', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (needMutual != null) 'need_mutual': needMutual,
        if (out != null) 'out': out,
        if (sort != null) 'sort': sort,
        if (needViewed != null) 'need_viewed': needViewed,
        if (suggested != null) 'suggested': suggested,
        if (ref != null) 'ref': ref,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> getSuggestions({
    List<String>? filter,
    int? count,
    int? offset,
    List<Object>? fields,
    String? nameCase,
  }) =>
      _api.request('friends.getSuggestions', {
        if (filter != null) 'filter': filter.join(','),
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
      });

  Future<Map<String, dynamic>> search({
    int? userId,
    String? q,
    List<Object>? fields,
    String? nameCase,
    int? offset,
    int? count,
  }) =>
      _api.request('friends.search', {
        if (userId != null) 'user_id': userId,
        if (q != null) 'q': q,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });
}
