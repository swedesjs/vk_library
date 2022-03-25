import 'package:vk_library/src/api.dart';

class Docs {
  final API _api;

  Docs(this._api);

  Future<Map<String, dynamic>> add({
    required int ownerId,
    required int docId,
    String? accessKey,
  }) =>
      _api.request('docs.add', {
        'owner_id': ownerId,
        'doc_id': docId,
        if (accessKey != null) 'access_key': accessKey,
      });

  Future<Map<String, dynamic>> delete({
    required int ownerId,
    required int docId,
  }) =>
      _api.request('docs.delete', {
        'owner_id': ownerId,
        'doc_id': docId,
      });

  Future<Map<String, dynamic>> edit({
    required int ownerId,
    required int docId,
    required String title,
    List<String>? tags,
  }) =>
      _api.request('docs.edit', {
        'owner_id': ownerId,
        'doc_id': docId,
        'title': title,
        if (tags != null) 'tags': tags.join(','),
      });

  Future<Map<String, dynamic>> get({
    int? count,
    int? offset,
    int? type,
    int? ownerId,
    bool? returnTags,
  }) =>
      _api.request('docs.get', {
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (type != null) 'type': type,
        if (ownerId != null) 'owner_id': ownerId,
        if (returnTags != null) 'return_tags': returnTags,
      });

  Future<Map<String, dynamic>> getById({
    required List<String> docs,
    bool? returnTags,
  }) =>
      _api.request('docs.getById', {
        'docs': docs.join(','),
        if (returnTags != null) 'return_tags': returnTags,
      });

  Future<Map<String, dynamic>> getMessagesUploadServer({
    String? type,
    int? peerId,
  }) =>
      _api.request('docs.getMessagesUploadServer', {
        if (type != null) 'type': type,
        if (peerId != null) 'peer_id': peerId,
      });

  Future<Map<String, dynamic>> getTypes({
    required int ownerId,
  }) =>
      _api.request('docs.getTypes', {
        'owner_id': ownerId,
      });

  Future<Map<String, dynamic>> getUploadServer({
    int? groupId,
  }) =>
      _api.request('docs.getUploadServer', {
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getWallUploadServer({
    int? groupId,
  }) =>
      _api.request('docs.getWallUploadServer', {
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> save({
    required String file,
    String? title,
    String? tags,
    bool? returnTags,
  }) =>
      _api.request('docs.save', {
        'file': file,
        if (title != null) 'title': title,
        if (tags != null) 'tags': tags,
        if (returnTags != null) 'return_tags': returnTags,
      });

  Future<Map<String, dynamic>> search({
    required String q,
    bool? searchOwn,
    int? count,
    int? offset,
    bool? returnTags,
  }) =>
      _api.request('docs.search', {
        'q': q,
        if (searchOwn != null) 'search_own': searchOwn,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (returnTags != null) 'return_tags': returnTags,
      });
}
