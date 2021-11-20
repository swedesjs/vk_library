part of vk_library_models;

/// A class for using the [`video`](https://vk.com/dev/video) methods.
class Video {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Video(this._api);

  /// Adds a video to the user's list.
  Future<bool> add({
    int? targetId,
    required int videoId,
    required ownerId,
  }) async {
    final data = await _api.call("video.add", {
      if (targetId != null) "target_id": targetId,
      "video_id": videoId,
      "owner_id": ownerId,
    });

    return data.response == 1;
  }

  /// Creates a blank video album.
  Future<Json> addAlbum({
    int? groupId,
    String? title,
    List<String>? privacy,
  }) async {
    final data = await _api.call("video.addAlbum", {
      if (groupId != null) "group_id": groupId,
      if (title != null) "title": title,
      if (privacy != null) "privacy": privacy.join(","),
    });

    return data.response;
  }

  /// Creating a new comment to the video
  Future<int> createComment({
    int? ownerId,
    required int videoId,
    String? message,
    List<String>? attachments,
    bool? fromGroup,
    int? replyToComment,
    int? stickerId,
    String? guid,
  }) async {
    final data = await _api.call("video.createComment", {
      if (ownerId != null) "owner_id": ownerId,
      "video_id": videoId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
      if (fromGroup != null) "from_group": fromGroup,
      if (replyToComment != null) "reply_to_comment": replyToComment,
      if (stickerId != null) "sticker_id": stickerId,
      if (guid != null) "guid": guid,
    });

    return data.response;
  }

  /// Deletes a video from the user page.
  Future<bool> delete({
    required int videoId,
    int? ownerId,
    int? targetId,
  }) async {
    final data = await _api.call("video.delete", {
      "video_id": videoId,
      if (ownerId != null) "owner_id": ownerId,
      if (targetId != null) "target_id": targetId,
    });

    return data.response == 1;
  }

  /// Deletes a video album.
  Future<bool> deleteAlbum({
    int? groupId,
    required int albumId,
  }) async {
    final data = await _api.call("video.deleteAlbum", {
      if (groupId != null) "group_id": groupId,
      "album_id": albumId,
    });

    return data.response == 1;
  }

  /// Deletes a comment to the video.
  Future<bool> deleteComment({
    int? ownerId,
    required int commentId,
  }) async {
    final data = await _api.call("video.deleteComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Edits video data.
  Future<bool> edit({
    int? ownerId,
    required int videoId,
    String? name,
    String? desc,
    List<String>? privacyView,
    List<String>? privacyComment,
    bool? noComments,
    bool? repeat,
  }) async {
    final data = await _api.call("video.edit", {
      if (ownerId != null) "owner_id": ownerId,
      "video_id": videoId,
      if (name != null) "name": name,
      if (desc != null) "desc": desc,
      if (privacyView != null) "privacy_view": privacyView.join(","),
      if (privacyComment != null) "privacy_comment": privacyComment.join(","),
      if (noComments != null) "no_comments": noComments,
      if (repeat != null) "repeat": repeat,
    });

    return data.response == 1;
  }

  /// Edits an album with video.
  Future<bool> editAlbum({
    int? groupId,
    required int albumId,
    required String title,
    List<String>? privacy,
  }) async {
    final data = await _api.call("video.editAlbum", {
      if (groupId != null) "group_id": groupId,
      "album_id": albumId,
      "title": title,
      if (privacy != null) "privacy": privacy.join(","),
    });

    return data.response == 1;
  }

  /// Changes comment text for video recording.
  Future<bool> editComment({
    int? ownerId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) async {
    final data = await _api.call("video.editComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
    });

    return data.response == 1;
  }

  /// Returns information about the video recordings.
  Future<Json> get({
    int? ownerId,
    List<String>? videos,
    int? albumId,
    int? count,
    int? offset,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("video.get", {
      if (ownerId != null) "owner_id": ownerId,
      if (videos != null) "videos": videos.join(","),
      if (albumId != null) "album_id": albumId,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Allows you to get information about the album with the video.
  Future<Json> getAlbumById({
    int? ownerId,
    required int albumId,
  }) async {
    final data = await _api.call("video.getAlbumById", {
      if (ownerId != null) "owner_id": ownerId,
      "album_id": albumId,
    });

    return data.response;
  }

  /// Returns a list of user albums or community.
  Future<Json> getAlbums({
    int? ownerId,
    int? offset,
    int? count,
    bool? extended,
    bool? needSystem,
  }) async {
    final data = await _api.call("video.getAlbums", {
      if (ownerId != null) "owner_id": ownerId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (needSystem != null) "need_system": needSystem,
    });

    return data.response;
  }

  /// Returns a list of albums in which the video is located.
  Future<List<T>> getAlbumsByVideo<T extends Object>({
    int? targetId,
    required int ownerId,
    required int videoId,
    bool? extended,
  }) async {
    final data = await _api.call("video.getAlbumsByVideo", {
      if (targetId != null) "target_id": targetId,
      "owner_id": ownerId,
      "video_id": videoId,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns a list of comments to the video.
  Future<Json> getComments({
    int? ownerId,
    required int videoId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    String? sort,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("video.getComments", {
      if (ownerId != null) "owner_id": ownerId,
      "video_id": videoId,
      if (needLikes != null) "need_likes": needLikes,
      if (startCommentId != null) "start_comment_id": startCommentId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (sort != null) "sort": sort,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Allows you to remove a video from the album.
  Future<bool> removeFromAlbum({
    int? targetId,
    int? albumId,
    List<int>? albumIds,
    required int ownerId,
    required int videoId,
  }) async {
    final data = await _api.call("video.removeFromAlbum", {
      if (targetId != null) "target_id": targetId,
      if (albumId != null) "album_id": albumId,
      if (albumIds != null) "album_ids": albumIds.join(","),
      "owner_id": ownerId,
      "video_id": videoId,
    });

    return data.response == 1;
  }

  /// Allows you to change the order of albums with video.
  Future<bool> reorderAlbums({
    int? ownerId,
    required int albumId,
    int? before,
    int? after,
  }) async {
    final data = await _api.call("video.reorderAlbums", {
      if (ownerId != null) "owner_id": ownerId,
      "album_id": albumId,
      if (before != null) "before": before,
      if (after != null) "after": after,
    });

    return data.response == 1;
  }

  /// Allows you to move the video in the album.
  Future<bool> reorderVideos({
    int? targetId,
    int? albumId,
    required int ownerId,
    required int videoId,
    int? beforeOwnerId,
    int? beforeVideoId,
    int? afterOwnerId,
    int? afterVideoId,
  }) async {
    final data = await _api.call("video.reorderVideos", {
      if (targetId != null) "target_id": targetId,
      if (albumId != null) "album_id": albumId,
      "owner_id": ownerId,
      "video_id": videoId,
      if (beforeOwnerId != null) "before_owner_id": beforeOwnerId,
      if (beforeVideoId != null) "before_video_id": beforeVideoId,
      if (afterOwnerId != null) "after_owner_id": afterOwnerId,
      if (afterVideoId != null) "after_video_id": afterVideoId,
    });

    return data.response == 1;
  }

  /// Allows you to complain to the video.
  Future<bool> report({
    required int ownerId,
    required int videoId,
    int? reason,
    String? comment,
    String? searchQuery,
  }) async {
    final data = await _api.call("video.report", {
      "owner_id": ownerId,
      "video_id": videoId,
      if (reason != null) "reason": reason,
      if (comment != null) "comment": comment,
      if (searchQuery != null) "search_query": searchQuery,
    });

    return data.response == 1;
  }

  /// Allows you to comment by the video.
  Future<bool> reportComment({
    required int ownerId,
    required int commentId,
    int? reason,
  }) async {
    final data = await _api.call("video.reportComment", {
      "owner_id": ownerId,
      "comment_id": commentId,
      if (reason != null) "reason": reason,
    });

    return data.response == 1;
  }

  /// Restores remote video.
  Future<bool> restore({
    required int videoId,
    int? ownerId,
  }) async {
    final data = await _api.call("video.restore", {
      "video_id": videoId,
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response == 1;
  }

  /// Restores the remote comment to the video.
  Future<bool> restoreComment({
    int? ownerId,
    required int commentId,
  }) async {
    final data = await _api.call("video.restoreComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Returns the server address required for download, and video data.
  Future<Json> save({
    String? name,
    String? description,
    bool? isPrivate,
    bool? wallpost,
    String? link,
    int? groupId,
    int? albumId,
    List<String>? privacyView,
    List<String>? privacyComment,
    bool? noComments,
    bool? repeat,
    bool? compression,
  }) async {
    final data = await _api.call("video.save", {
      if (name != null) "name": name,
      if (description != null) "description": description,
      if (isPrivate != null) "is_private": isPrivate,
      if (wallpost != null) "wallpost": wallpost,
      if (link != null) "link": link,
      if (groupId != null) "group_id": groupId,
      if (albumId != null) "album_id": albumId,
      if (privacyView != null) "privacy_view": privacyView.join(","),
      if (privacyComment != null) "privacy_comment": privacyComment.join(","),
      if (noComments != null) "no_comments": noComments,
      if (repeat != null) "repeat": repeat,
      if (compression != null) "compression": compression,
    });

    return data.response;
  }

  /// Returns a list of video records in accordance with the specified search criterion.
  Future<Json> search({
    String? q,
    int? sort,
    int? hd,
    bool? adult,
    bool? live,
    List<String>? filters,
    bool? searchOwn,
    int? offset,
    int? longer,
    int? shorter,
    int? count,
    bool? extended,
    int? ownerId,
  }) async {
    final data = await _api.call("video.search", {
      if (q != null) "q": q,
      if (sort != null) "sort": sort,
      if (hd != null) "hd": hd,
      if (adult != null) "adult": adult,
      if (live != null) "live": live,
      if (filters != null) "filters": filters.join(","),
      if (searchOwn != null) "search_own": searchOwn,
      if (offset != null) "offset": offset,
      if (longer != null) "longer": longer,
      if (shorter != null) "shorter": shorter,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response;
  }
}
