part of vk_library_models;

/// A class for using the [`board`](https://vk.com/dev/board) methods.
class Board {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Board(this._api);

  /// Creates a new topic in the group's discussion list.
  Future<int> addTopic({
    required int groupId,
    required String title,
    String? text,
    bool? fromGroup,
    List<String>? attachments,
  }) async {
    final data = await _api.call("board.addTopic", {
      "group_id": groupId,
      "title": title,
      if (text != null) "text": text,
      if (fromGroup != null) "from_group": fromGroup,
      if (attachments != null) "attachments": attachments.join(","),
    });

    return data.response;
  }

  /// Closes a topic in the group's discussion list (you cannot post new messages in such a topic).
  Future<bool> closeTopic({
    required int groupId,
    required int topicId,
  }) async {
    final data = await _api.call("board.closeTopic", {
      "group_id": groupId,
      "topic_id": topicId,
    });

    return data.response == 1;
  }

  /// Adds a new comment to the discussion.
  Future<int> createComment({
    required int groupId,
    required int topicId,
    String? message,
    List<String>? attachments,
    bool? fromGroup,
    int? stickerId,
    String? guid,
  }) async {
    final data = await _api.call("board.createComment", {
      "group_id": groupId,
      "topic_id": topicId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
      if (fromGroup != null) "from_group": fromGroup,
      if (stickerId != null) "sticker_id": stickerId,
      if (guid != null) "guid": guid
    });

    return data.response;
  }

  /// Deletes the post of a topic in community discussions.
  Future<bool> deleteComment({
    required int groupId,
    required int topicId,
    required int commentId,
  }) async {
    final data = await _api.call("board.deleteComment", {
      "group_id": groupId,
      "topic_id": topicId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Removes a topic in group discussions.
  Future<bool> deleteTopic({
    required int groupId,
    required int topicId,
  }) async {
    final data = await _api.call("board.deleteTopic", {
      "group_id": groupId,
      "topic_id": topicId,
    });

    return data.response == 1;
  }

  /// Edits one of the posts in a community discussion.
  Future<bool> editComment({
    required int groupId,
    required int topicId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) async {
    final data = await _api.call("board.editComment", {
      "group_id": groupId,
      "topic_id": topicId,
      "comment_id": commentId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
    });

    return data.response == 1;
  }

  /// Changes the title of a topic in the group's discussion list.
  Future<bool> editTopic({
    required int groupId,
    required int topicId,
    required String title,
  }) async {
    final data = await _api.call("board.editTopic", {
      "group_id": groupId,
      "topic_id": topicId,
      "title": title,
    });

    return data.response == 1;
  }

  /// Fixes the topic in the group's discussion list (such topic is displayed above the others in any sorting).
  Future<bool> fixTopic({
    required int groupId,
    required int topicId,
  }) async {
    final data = await _api.call("board.fixTopic", {
      "group_id": groupId,
      "topic_id": topicId,
    });

    return data.response == 1;
  }

  /// Returns a list of messages in the specified topic.
  Future<Json> getComments({
    required int groupId,
    required int topicId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    bool? extended,
    SortBoardGetComments? sort,
  }) async {
    final data = await _api.call("board.getComments", {
      "group_id": groupId,
      "topic_id": topicId,
      if (needLikes != null) "need_likes": needLikes,
      if (startCommentId != null) "start_comment_id": startCommentId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (sort != null) "sort": sort.value,
    });

    return data.response;
  }

  /// Returns a list of topics in the discussions for the specified group.
  Future<Json> getTopics({
    required int groupId,
    List<int>? topicIds,
    // TODO: Implement the enum - https://vk.com/dev/board.getTopics
    int? order,
    int? offset,
    int? count,
    bool? extended,
    // TODO: Implement the enum - https://vk.com/dev/board.getTopics
    int? preview,
    int? previewLength,
  }) async {
    final data = await _api.call("board.getTopics", {
      "group_id": groupId,
      if (topicIds != null) "topic_ids": topicIds.join(","),
      if (order != null) "order": order,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (preview != null) "preview": preview,
      if (previewLength != null) "preview_length": previewLength,
    });

    return data.response;
  }

  /// Opens a previously closed topic (it will become possible to leave new messages in it).
  Future<bool> openTopic({
    required int groupId,
    required int topicId,
  }) async {
    final data = await _api.call("board.openTopic", {
      "group_id": groupId,
      "topic_id": topicId,
    });

    return data.response == 1;
  }

  /// Recovers a deleted topic post in group discussions.
  Future<bool> restoreComment({
    required int groupId,
    required int topicId,
    required int commentId,
  }) async {
    final data = await _api.call("board.restoreComment", {
      "group_id": groupId,
      "topic_id": topicId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Unbinds the topic in the group's discussion list (the topic will be displayed according to the selected sorting).
  Future<bool> unfixTopic({
    required int groupId,
    required int topicId,
  }) async {
    final data = await _api.call("board.unfixTopic", {
      "group_id": groupId,
      "topic_id": topicId,
    });

    return data.response == 1;
  }
}
