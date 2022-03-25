import 'package:vk_library/src/api.dart';

class Board {
  final API _api;

  Board(this._api);

  Future<Map<String, dynamic>> addTopic({
    required int groupId,
    required String title,
    String? text,
    bool? fromGroup,
    dynamic attachments,
  }) =>
      _api.request('board.addTopic', {
        'group_id': groupId,
        'title': title,
        if (text != null) 'text': text,
        if (fromGroup != null) 'from_group': fromGroup,
        if (attachments != null) 'attachments': attachments,
      });

  Future<Map<String, dynamic>> closeTopic({
    required int groupId,
    required int topicId,
  }) =>
      _api.request('board.closeTopic', {
        'group_id': groupId,
        'topic_id': topicId,
      });

  Future<Map<String, dynamic>> createComment({
    required int groupId,
    required int topicId,
    String? message,
    dynamic attachments,
    bool? fromGroup,
    int? stickerId,
    String? guid,
  }) =>
      _api.request('board.createComment', {
        'group_id': groupId,
        'topic_id': topicId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments,
        if (fromGroup != null) 'from_group': fromGroup,
        if (stickerId != null) 'sticker_id': stickerId,
        if (guid != null) 'guid': guid,
      });

  Future<Map<String, dynamic>> deleteComment({
    required int groupId,
    required int topicId,
    required int commentId,
  }) =>
      _api.request('board.deleteComment', {
        'group_id': groupId,
        'topic_id': topicId,
        'comment_id': commentId,
      });

  Future<Map<String, dynamic>> deleteTopic({
    required int groupId,
    required int topicId,
  }) =>
      _api.request('board.deleteTopic', {
        'group_id': groupId,
        'topic_id': topicId,
      });

  Future<Map<String, dynamic>> editComment({
    required int groupId,
    required int topicId,
    required int commentId,
    String? message,
    dynamic attachments,
  }) =>
      _api.request('board.editComment', {
        'group_id': groupId,
        'topic_id': topicId,
        'comment_id': commentId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments,
      });

  Future<Map<String, dynamic>> editTopic({
    required int groupId,
    required int topicId,
    required String title,
  }) =>
      _api.request('board.editTopic', {
        'group_id': groupId,
        'topic_id': topicId,
        'title': title,
      });

  Future<Map<String, dynamic>> fixTopic({
    required int groupId,
    required int topicId,
  }) =>
      _api.request('board.fixTopic', {
        'group_id': groupId,
        'topic_id': topicId,
      });

  Future<Map<String, dynamic>> getComments({
    required int groupId,
    required int topicId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    bool? extended,
    String? sort,
  }) =>
      _api.request('board.getComments', {
        'group_id': groupId,
        'topic_id': topicId,
        if (needLikes != null) 'need_likes': needLikes,
        if (startCommentId != null) 'start_comment_id': startCommentId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (sort != null) 'sort': sort,
      });

  Future<Map<String, dynamic>> getTopics({
    required int groupId,
    dynamic topicIds,
    int? order,
    int? offset,
    int? count,
    bool? extended,
    int? preview,
    int? previewLength,
  }) =>
      _api.request('board.getTopics', {
        'group_id': groupId,
        if (topicIds != null) 'topic_ids': topicIds,
        if (order != null) 'order': order,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (preview != null) 'preview': preview,
        if (previewLength != null) 'preview_length': previewLength,
      });

  Future<Map<String, dynamic>> openTopic({
    required int groupId,
    required int topicId,
  }) =>
      _api.request('board.openTopic', {
        'group_id': groupId,
        'topic_id': topicId,
      });

  Future<Map<String, dynamic>> restoreComment({
    required int groupId,
    required int topicId,
    required int commentId,
  }) =>
      _api.request('board.restoreComment', {
        'group_id': groupId,
        'topic_id': topicId,
        'comment_id': commentId,
      });

  Future<Map<String, dynamic>> unfixTopic({
    required int groupId,
    required int topicId,
  }) =>
      _api.request('board.unfixTopic', {
        'group_id': groupId,
        'topic_id': topicId,
      });
}
