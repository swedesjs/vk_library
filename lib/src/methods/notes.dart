import 'package:vk_library/src/api.dart';

class Notes {
  final API _api;

  Notes(this._api);

  Future<Map<String, dynamic>> add({
    required String title,
    required String text,
    List<String>? privacyView,
    List<String>? privacyComment,
  }) =>
      _api.request('notes.add', {
        'title': title,
        'text': text,
        if (privacyView != null) 'privacy_view': privacyView.join(','),
        if (privacyComment != null) 'privacy_comment': privacyComment.join(','),
      });

  Future<Map<String, dynamic>> createComment({
    required int noteId,
    int? ownerId,
    int? replyTo,
    required String message,
    String? guid,
  }) =>
      _api.request('notes.createComment', {
        'note_id': noteId,
        if (ownerId != null) 'owner_id': ownerId,
        if (replyTo != null) 'reply_to': replyTo,
        'message': message,
        if (guid != null) 'guid': guid,
      });

  Future<Map<String, dynamic>> delete({
    required int noteId,
  }) =>
      _api.request('notes.delete', {
        'note_id': noteId,
      });

  Future<Map<String, dynamic>> deleteComment({
    required int commentId,
    int? ownerId,
  }) =>
      _api.request('notes.deleteComment', {
        'comment_id': commentId,
        if (ownerId != null) 'owner_id': ownerId,
      });

  Future<Map<String, dynamic>> edit({
    required int noteId,
    required String title,
    required String text,
    List<String>? privacyView,
    List<String>? privacyComment,
  }) =>
      _api.request('notes.edit', {
        'note_id': noteId,
        'title': title,
        'text': text,
        if (privacyView != null) 'privacy_view': privacyView.join(','),
        if (privacyComment != null) 'privacy_comment': privacyComment.join(','),
      });

  Future<Map<String, dynamic>> editComment({
    required int commentId,
    int? ownerId,
    required String message,
  }) =>
      _api.request('notes.editComment', {
        'comment_id': commentId,
        if (ownerId != null) 'owner_id': ownerId,
        'message': message,
      });

  Future<Map<String, dynamic>> get({
    List<int>? noteIds,
    int? userId,
    int? offset,
    int? count,
    int? sort,
  }) =>
      _api.request('notes.get', {
        if (noteIds != null) 'note_ids': noteIds.join(','),
        if (userId != null) 'user_id': userId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (sort != null) 'sort': sort,
      });

  Future<Map<String, dynamic>> getById({
    required int noteId,
    int? ownerId,
    bool? needWiki,
  }) =>
      _api.request('notes.getById', {
        'note_id': noteId,
        if (ownerId != null) 'owner_id': ownerId,
        if (needWiki != null) 'need_wiki': needWiki,
      });

  Future<Map<String, dynamic>> getComments({
    required int noteId,
    int? ownerId,
    int? sort,
    int? offset,
    int? count,
  }) =>
      _api.request('notes.getComments', {
        'note_id': noteId,
        if (ownerId != null) 'owner_id': ownerId,
        if (sort != null) 'sort': sort,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> restoreComment({
    required int commentId,
    int? ownerId,
  }) =>
      _api.request('notes.restoreComment', {
        'comment_id': commentId,
        if (ownerId != null) 'owner_id': ownerId,
      });
}
