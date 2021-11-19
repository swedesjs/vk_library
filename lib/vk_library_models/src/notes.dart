part of "../vk_library_models.dart";

/// A class for using the [`notes`](https://vk.com/dev/notes) methods.
class Notes {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Notes(this._api);

  /// Creates a new note at the current user.
  Future<int> add({
    required String title,
    required String text,
    // TODO: Implement the enum - https://vk.com/dev/privacy_setting
    List<String>? privacyView,
    // TODO: Implement the enum - https://vk.com/dev/privacy_setting
    List<String>? privacyComment,
  }) async {
    final data = await _api.call("notes.add", {
      "title": title,
      "text": text,
      if (privacyView != null) "privacy_view": privacyView.join(","),
      if (privacyComment != null) "privacy_comment": privacyComment.join(","),
    });

    return data.response;
  }

  /// Add a new comment to the article.
  Future<int> createComment({
    required int noteId,
    int? ownerId,
    int? replyTo,
    required String message,
    String? guid,
  }) async {
    final data = await _api.call("notes.createComment", {
      "note_id": noteId,
      if (ownerId != null) "owner_id": ownerId,
      if (replyTo != null) "reply_to": replyTo,
      "message": message,
      if (guid != null) "guid": guid,
    });

    return data.response;
  }

  /// Removes the note of the current user.
  Future<bool> delete({required int noteId}) async {
    final data = await _api.call("notes.delete", {"note_id": noteId});

    return data.response == 1;
  }

  /// Removes comment on the article.
  Future<bool> deleteComment({
    required int commentId,
    int? ownerId,
  }) async {
    final data = await _api.call("notes.deleteComment", {
      "comment_id": commentId,
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response == 1;
  }

  /// Edit a note of the current user.
  Future<bool> edit({
    required int noteId,
    required String title,
    required String text,
    // TODO: Implement the enum - https://vk.com/dev/privacy_setting
    List<String>? privacyView,
    // TODO: Implement the enum - https://vk.com/dev/privacy_setting
    List<String>? privacyComment,
  }) async {
    final data = await _api.call("notes.edit", {
      "note_id": noteId,
      "title": title,
      "text": text,
      if (privacyView != null) "privacy_view": privacyView.join(","),
      if (privacyComment != null) "privacy_comment": privacyComment.join(","),
    });

    return data.response == 1;
  }

  /// Edits article comment from the notes.
  Future<bool> editComment({
    required int commentId,
    int? ownerId,
    String? message,
  }) async {
    final data = await _api.call("notes.editComment", {
      "comment_id": commentId,
      if (ownerId != null) "owner_id": ownerId,
      if (message != null) "message": message,
    });

    return data.response == 1;
  }

  /// Returns a list created by a person taking notes.
  Future<Json> get({
    List<int>? noteIds,
    int? userId,
    int? offset,
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/notes.get
    int? sort,
  }) async {
    final data = await _api.call("notes.get", {
      if (noteIds != null) "note_ids": noteIds.join(","),
      if (userId != null) "user_id": userId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (sort != null) "sort": sort,
    });

    return data.response;
  }

  /// Returns a note by its ID.
  Future<Json> getById({
    required int noteId,
    int? ownerId,
    bool? needWiki,
  }) async {
    final data = await _api.call("notes.getById", {
      "note_id": noteId,
      if (ownerId != null) "owner_id": ownerId,
      if (needWiki != null) "need_wiki": needWiki,
    });

    return data.response;
  }

  /// Returns a list of comments on the article.
  Future<Json> getComments({
    required int noteId,
    int? ownerId,
    // TODO: Implement the enum - https://vk.com/dev/notes.get
    int? sort,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("notes.getComments", {
      "note_id": noteId,
      if (ownerId != null) "owner_id": ownerId,
      if (sort != null) "sort": sort,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Restores deleted comment.
  Future<bool> restoreComment({
    required int commentId,
    int? ownerId,
  }) async {
    final data = await _api.call("notes.restoreComment", {
      "comment_id": commentId,
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response == 1;
  }
}
