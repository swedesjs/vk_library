import 'package:vk_library/src/api.dart';

class Fave {
  final API _api;

  Fave(this._api);

  Future<Map<String, dynamic>> addArticle({
    required String url,
  }) =>
      _api.request('fave.addArticle', {
        'url': url,
      });

  Future<Map<String, dynamic>> addLink({
    required String link,
  }) =>
      _api.request('fave.addLink', {
        'link': link,
      });

  Future<Map<String, dynamic>> addPage({
    int? userId,
    int? groupId,
  }) =>
      _api.request('fave.addPage', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> addPost({
    required int ownerId,
    required int id,
    String? accessKey,
  }) =>
      _api.request('fave.addPost', {
        'owner_id': ownerId,
        'id': id,
        if (accessKey != null) 'access_key': accessKey,
      });

  Future<Map<String, dynamic>> addProduct({
    required int ownerId,
    required int id,
    String? accessKey,
  }) =>
      _api.request('fave.addProduct', {
        'owner_id': ownerId,
        'id': id,
        if (accessKey != null) 'access_key': accessKey,
      });

  Future<Map<String, dynamic>> addTag({
    String? name,
    String? position,
  }) =>
      _api.request('fave.addTag', {
        if (name != null) 'name': name,
        if (position != null) 'position': position,
      });

  Future<Map<String, dynamic>> addVideo({
    required int ownerId,
    required int id,
    String? accessKey,
  }) =>
      _api.request('fave.addVideo', {
        'owner_id': ownerId,
        'id': id,
        if (accessKey != null) 'access_key': accessKey,
      });

  Future<Map<String, dynamic>> editTag({
    required int id,
    required String name,
  }) =>
      _api.request('fave.editTag', {
        'id': id,
        'name': name,
      });

  Future<Map<String, dynamic>> get({
    bool? extended,
    String? itemType,
    int? tagId,
    int? offset,
    int? count,
    String? fields,
    bool? isFromSnackbar,
  }) =>
      _api.request('fave.get', {
        if (extended != null) 'extended': extended,
        if (itemType != null) 'item_type': itemType,
        if (tagId != null) 'tag_id': tagId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields,
        if (isFromSnackbar != null) 'is_from_snackbar': isFromSnackbar,
      });

  Future<Map<String, dynamic>> getPages({
    int? offset,
    int? count,
    String? type,
    dynamic fields,
    int? tagId,
  }) =>
      _api.request('fave.getPages', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (type != null) 'type': type,
        if (fields != null) 'fields': fields,
        if (tagId != null) 'tag_id': tagId,
      });

  Future<Map<String, dynamic>> getTags() => _api.request('fave.getTags');

  Future<Map<String, dynamic>> markSeen() => _api.request('fave.markSeen');

  Future<Map<String, dynamic>> removeArticle({
    required int ownerId,
    required int articleId,
  }) =>
      _api.request('fave.removeArticle', {
        'owner_id': ownerId,
        'article_id': articleId,
      });

  Future<Map<String, dynamic>> removeLink({
    String? linkId,
    String? link,
  }) =>
      _api.request('fave.removeLink', {
        if (linkId != null) 'link_id': linkId,
        if (link != null) 'link': link,
      });

  Future<Map<String, dynamic>> removePage({
    int? userId,
    int? groupId,
  }) =>
      _api.request('fave.removePage', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> removePost({
    required int ownerId,
    required int id,
  }) =>
      _api.request('fave.removePost', {
        'owner_id': ownerId,
        'id': id,
      });

  Future<Map<String, dynamic>> removeProduct({
    required int ownerId,
    required int id,
  }) =>
      _api.request('fave.removeProduct', {
        'owner_id': ownerId,
        'id': id,
      });

  Future<Map<String, dynamic>> removeTag({
    required int id,
  }) =>
      _api.request('fave.removeTag', {
        'id': id,
      });

  Future<Map<String, dynamic>> removeVideo({
    required int ownerId,
    required int id,
  }) =>
      _api.request('fave.removeVideo', {
        'owner_id': ownerId,
        'id': id,
      });

  Future<Map<String, dynamic>> reorderTags({
    required dynamic ids,
  }) =>
      _api.request('fave.reorderTags', {
        'ids': ids,
      });

  Future<Map<String, dynamic>> setPageTags({
    int? userId,
    int? groupId,
    dynamic tagIds,
  }) =>
      _api.request('fave.setPageTags', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
        if (tagIds != null) 'tag_ids': tagIds,
      });

  Future<Map<String, dynamic>> setTags({
    String? itemType,
    int? itemOwnerId,
    int? itemId,
    dynamic tagIds,
    String? linkId,
    String? linkUrl,
  }) =>
      _api.request('fave.setTags', {
        if (itemType != null) 'item_type': itemType,
        if (itemOwnerId != null) 'item_owner_id': itemOwnerId,
        if (itemId != null) 'item_id': itemId,
        if (tagIds != null) 'tag_ids': tagIds,
        if (linkId != null) 'link_id': linkId,
        if (linkUrl != null) 'link_url': linkUrl,
      });

  Future<Map<String, dynamic>> trackPageInteraction({
    int? userId,
    int? groupId,
  }) =>
      _api.request('fave.trackPageInteraction', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
      });
}
