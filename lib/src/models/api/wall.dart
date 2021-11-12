part of vk_library;

/// A class for using the [`wall`](https://vk.com/dev/wall) methods.
class Wall {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Wall(API api) : _callMethod = api._callMethod("wall");

  /// Checks the link to indicate the source.
  Future<bool> checkCopyrightLink({
    required String link,
  }) async {
    final data = await _callMethod("checkCopyrightLink", {
      "link": link,
    });

    return data.response == 1;
  }

  /// Turns off recording comment
  Future<bool> closeComments(
      {required int ownerId, required int postId}) async {
    final data = await _callMethod("closeComments", {
      "owner_id": ownerId,
      "post_id": postId,
    });

    return data.response == 1;
  }

  /// Adds a comment to record on the wall.
  Future<Json> createComment({
    int? ownerId,
    required int postId,
    int? fromGroup,
    String? message,
    int? replyToComment,
    List<String>? attachments,
    int? stickerId,
    String? guid,
  }) async {
    final data = await _callMethod("createComment", {
      if (ownerId != null) "owner_id": ownerId,
      "post_id": postId,
      if (fromGroup != null) "from_group": fromGroup,
      if (message != null) "message": message,
      if (replyToComment != null) "reply_to_comment": replyToComment,
      if (attachments != null) "attachments": attachments.join(","),
      if (stickerId != null) "sticker_id": stickerId,
      if (guid != null) "guid": guid,
    });

    return data.response;
  }

  /// Removes a record from the wall.
  Future<bool> delete({int? ownerId, int? postId}) async {
    final data = await _callMethod("delete", {
      if (ownerId != null) "owner_id": ownerId,
      if (postId != null) "post_id": postId,
    });

    return data.response == 1;
  }

  /// Deletes a comment on the wall entry.
  Future<bool> deleteComment({
    int? ownerId,
    required int commentId,
  }) async {
    final data = await _callMethod("deleteComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Edits wall recording.
  Future<T> edit<T extends Object>({
    int? ownerId,
    required int postId,
    bool? friendsOnly,
    String? message,
    List<String>? attachments,
    String? services,
    bool? signed,
    int? publishDate,
    num? lat,
    num? long,
    int? placeId,
    bool? markAsAds,
    bool? closeComments,
    int? donutPaidDuration,
    int? posterBkgId,
    int? posterBkgOwnerId,
    String? posterBkgAccessHash,
    String? copyright,
  }) async {
    final data = await _callMethod("edit", {
      if (ownerId != null) "owner_id": ownerId,
      "post_id": postId,
      if (friendsOnly != null) "friends_only": friendsOnly,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
      if (services != null) "services": services,
      if (signed != null) "signed": signed,
      if (publishDate != null) "publish_date": publishDate,
      if (lat != null) "lat": lat,
      if (long != null) "long": long,
      if (placeId != null) "place_id": placeId,
      if (markAsAds != null) "mark_as_ads": markAsAds,
      if (closeComments != null) "close_comments": closeComments,
      if (donutPaidDuration != null) "donut_paid_duration": donutPaidDuration,
      if (posterBkgId != null) "poster_bkg_id": posterBkgId,
      if (posterBkgOwnerId != null) "poster_bkg_owner_id": posterBkgOwnerId,
      if (posterBkgAccessHash != null)
        "poster_bkg_access_hash": posterBkgAccessHash,
      if (copyright != null) "copyright": copyright,
    });

    return data.response;
  }

  /// Allows you to edit the hidden entry.
  Future<bool> editAdsStealth({
    int? ownerId,
    required int postId,
    String? message,
    List<String>? attachments,
    bool? signed,
    num? lat,
    num? long,
    int? placeId,
    String? linkButton,
    String? linkTitle,
    String? linkImage,
    String? linkVideo,
  }) async {
    final data = await _callMethod("editAdsStealth", {
      if (ownerId != null) "owner_id": ownerId,
      "post_id": postId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
      if (signed != null) "signed": signed,
      if (lat != null) "lat": lat,
      if (long != null) "long": long,
      if (placeId != null) "place_id": placeId,
      if (linkButton != null) "link_button": linkButton,
      if (linkTitle != null) "link_title": linkTitle,
      if (linkImage != null) "link_image": linkImage,
      if (linkVideo != null) "link_video": linkVideo,
    });

    return data.response == 1;
  }

  /// Edits a comment on the wall.
  Future<bool> editComment({
    int? ownerId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) async {
    final data = await _callMethod("editComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
    });

    return data.response == 1;
  }

  /// Returns a list of records from the user's wall or community.
  Future<Json> get({
    int? ownerId,
    String? domain,
    int? offset,
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/wall.get
    String? filter,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _callMethod("get", {
      if (ownerId != null) "owner_id": ownerId,
      if (domain != null) "domain": domain,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (filter != null) "filter": filter,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns a list of records from the walls of users or communities to their identifiers.
  Future<List<Json>> getById({
    required List<String> posts,
    bool? extended,
    int? copyHistoryDepth,
    Set<String>? fields,
  }) async {
    final data = await _callMethod("getById", {
      "posts": posts.join(","),
      if (extended != null) "extended": extended,
      if (copyHistoryDepth != null) "copy_history_depth": copyHistoryDepth,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Gets information about comments on the wall.
  Future<Json> getComment({
    int? ownerId,
    required int commentId,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _callMethod("getComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns a list of comments to the wall entry.
  Future<Json> getComments({
    int? ownerId,
    int? postId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    String? sort,
    int? previewLength,
    bool? extended,
    Set<String>? fields,
    int? commentId,
    int? threadItemsCount,
  }) async {
    final data = await _callMethod("getComments", {
      if (ownerId != null) "owner_id": ownerId,
      if (postId != null) "post_id": postId,
      if (needLikes != null) "need_likes": needLikes,
      if (startCommentId != null) "start_comment_id": startCommentId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (sort != null) "sort": sort,
      if (previewLength != null) "preview_length": previewLength,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (commentId != null) "comment_id": commentId,
      if (threadItemsCount != null) "thread_items_count": threadItemsCount,
    });

    return data.response;
  }

  /// Allows you to receive a list of reposts of a given recording.
  Future<Json> getReposts({
    int? ownerId,
    int? postId,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("getReposts", {
      if (ownerId != null) "owner_id": ownerId,
      if (postId != null) "post_id": postId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Enables recording comment
  Future<int> openComments({
    required int ownerId,
    required int postId,
  }) async {
    final data = await _callMethod("openComments", {
      "owner_id": ownerId,
      "post_id": postId,
    });

    return data.response;
  }

  /// Fastens the wall entry (recording will be displayed above the rest).
  Future<bool> pin({
    int? ownerId,
    required int postId,
  }) async {
    final data = await _callMethod("pin", {
      if (ownerId != null) "owner_id": ownerId,
      "post_id": postId,
    });

    return data.response == 1;
  }

  /// Allows you to create an entry on the wall, offer an entry on the wall of a public page, publish an existing postponed entry.
  Future<Json> post({
    int? ownerId,
    bool? friendsOnly,
    bool? fromGroup,
    String? message,
    List<String>? attachments,
    String? services,
    bool? signed,
    int? publishDate,
    num? lat,
    num? long,
    int? placeId,
    int? postId,
    String? guid,
    bool? markAsAds,
    bool? closeComments,
    int? donutPaidDuration,
    bool? muteNotifications,
    String? copyright,
    int? topicId,
  }) async {
    final data = await _callMethod("post", {
      if (ownerId != null) "owner_id": ownerId,
      if (friendsOnly != null) "friends_only": friendsOnly,
      if (fromGroup != null) "from_group": fromGroup,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
      if (services != null) "services": services,
      if (signed != null) "signed": signed,
      if (publishDate != null) "publish_date": publishDate,
      if (lat != null) "lat": lat,
      if (long != null) "long": long,
      if (placeId != null) "place_id": placeId,
      if (postId != null) "post_id": postId,
      if (guid != null) "guid": guid,
      if (markAsAds != null) "mark_as_ads": markAsAds,
      if (closeComments != null) "close_comments": closeComments,
      if (donutPaidDuration != null) "donut_paid_duration": donutPaidDuration,
      if (muteNotifications != null) "mute_notifications": muteNotifications,
      if (copyright != null) "copyright": copyright,
      if (topicId != null) "topic_id": topicId,
    });

    return data.response;
  }

  /// Allows you to create a hidden entry that does not fall on the community wall and can later be used to create an entry type `Record in the Community`.
  Future<int> postAdsStealth({
    required int ownerId,
    String? message,
    List<String>? attachments,
    bool? signed,
    num? lat,
    num? long,
    int? placeId,
    String? guid,
    // TODO: Implement the enum - https://vk.com/dev/wall.postAdsStealth
    String? linkButton,
    String? linkTitle,
    String? linkImage,
    String? linkVideo,
  }) async {
    final data = await _callMethod("postAdsStealth", {
      "owner_id": ownerId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
      if (signed != null) "signed": signed,
      if (lat != null) "lat": lat,
      if (long != null) "long": long,
      if (placeId != null) "place_id": placeId,
      if (guid != null) "guid": guid,
      if (linkButton != null) "link_button": linkButton,
      if (linkTitle != null) "link_title": linkTitle,
      if (linkImage != null) "link_image": linkImage,
      if (linkVideo != null) "link_video": linkVideo,
    });

    return data.response;
  }

  /// Allows you to comment by the record.
  Future<bool> reportComment({
    required int ownerId,
    required int commentId,
    int? reason,
  }) async {
    final data = await _callMethod("reportComment", {
      "owner_id": ownerId,
      "comment_id": commentId,
      if (reason != null) "reason": reason,
    });

    return data.response == 1;
  }

  /// Allows you to enter the record.
  Future<bool> reportPost({
    required int ownerId,
    required int postId,
    int? reason,
  }) async {
    final data = await _callMethod("reportPost", {
      "owner_id": ownerId,
      "post_id": postId,
      if (reason != null) "reason": reason,
    });

    return data.response == 1;
  }

  /// Copies the object on the wall of the user or community.
  Future<Json> repost({
    required String object,
    String? message,
    int? groupId,
    bool? markAsAds,
    bool? muteNotifications,
  }) async {
    final data = await _callMethod("repost", {
      "object": object,
      if (message != null) "message": message,
      if (groupId != null) "group_id": groupId,
      if (markAsAds != null) "mark_as_ads": markAsAds,
      if (muteNotifications != null) "mute_notifications": muteNotifications,
    });

    return data.response;
  }

  /// Restores the remote record on the wall of the user or community.
  Future<bool> restore({
    int? ownerId,
    int? postId,
  }) async {
    final data = await _callMethod("restore", {
      if (ownerId != null) "owner_id": ownerId,
      if (postId != null) "post_id": postId,
    });

    return data.response == 1;
  }

  /// Restores the remote comment on the wall entry.
  Future<bool> restoreComment({
    int? ownerId,
    required int commentId,
  }) async {
    final data = await _callMethod("restoreComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Allows you to search for wall entries in accordance with the specified criteria.
  Future<Json> search({
    int? ownerId,
    String? domain,
    String? query,
    bool? ownersOnly,
    int? count,
    int? offset,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _callMethod("search", {
      if (ownerId != null) "owner_id": ownerId,
      if (domain != null) "domain": domain,
      if (query != null) "query": query,
      if (ownersOnly != null) "owners_only": ownersOnly,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Cancels consolidation on the wall.
  Future<bool> unpin({int? ownerId, required int postId}) async {
    final data = await _callMethod("unpin", {
      if (ownerId != null) "owner_id": ownerId,
      "post_id": postId,
    });

    return data.response == 1;
  }
}
