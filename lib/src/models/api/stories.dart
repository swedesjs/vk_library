part of vk_library;

/// A class for using the [`stories`](https://vk.com/dev/stories) methods.
class Stories {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Stories(this._api);

  /// Allows you to hide from the tape news of history from selected sources.
  Future<bool> banOwner({required List<int> ownersIds}) async {
    final data = await _api.call("stories.banOwner", {
      "owners_ids": ownersIds.join(","),
    });

    return data.response == 1;
  }

  /// Removes history.
  Future<bool> delete({
    int? ownerId,
    int? storyId,
    List<String>? stories,
  }) async {
    final data = await _api.call("stories.delete", {
      if (ownerId != null) "owner_id": ownerId,
      if (storyId != null) "story_id": storyId,
      if (stories != null) "stories": stories.join(","),
    });

    return data.response == 1;
  }

  /// Returns stories available for the current user.
  Future<Json> get({
    int? ownerId,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("stories.get", {
      if (ownerId != null) "owner_id": ownerId,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns a list of sources of stories hidden from the tape of the current user.
  Future<Json> getBanned({
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("stories.getBanned", {
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns information about history by its identifier.
  Future<Json> getById({
    required List<String> stories,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("stories.getById", {
      "stories": stories.join(","),
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Allows you to get an address to download history with a photo.
  Future<Json> getPhotoUploadServer({
    bool? addToNews,
    List<int>? userIds,
    String? replyToStory,
    // TODO: Implement the enum - https://vk.com/dev/stories.getPhotoUploadServer
    String? linkText,
    String? linkUrl,
    int? groupId,
    // TODO: Implement the class - https://vk.com/dev/objects/clickable_stickers
    Json? clickableStickers,
  }) async {
    final data = await _api.call("stories.getPhotoUploadServer", {
      if (addToNews != null) "add_to_news": addToNews,
      if (userIds != null) "user_ids": userIds.join(","),
      if (replyToStory != null) "reply_to_story": replyToStory,
      if (linkText != null) "link_text": linkText,
      if (linkUrl != null) "link_url": linkUrl,
      if (groupId != null) "group_id": groupId,
      if (clickableStickers != null) "clickable_stickers": clickableStickers,
    });

    return data.response;
  }

  /// Allows you to get answers to history.
  Future<Json> getReplies({
    required int ownerId,
    required int storyId,
    String? accessKey,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("stories.getReplies", {
      "owner_id": ownerId,
      "story_id": storyId,
      if (accessKey != null) "access_key": accessKey,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns history statistics.
  Future<Json> getStats({
    required int ownerId,
    required int storyId,
  }) async {
    final data = await _api.call("stories.getStats", {
      "owner_id": ownerId,
      "story_id": storyId,
    });

    return data.response;
  }

  /// Allows you to get an address to download video recording.
  Future<Json> getVideoUploadServer({
    bool? addToNews,
    List<int>? userIds,
    String? replyToStory,
    // TODO: Implement the enum - https://vk.com/dev/stories.getPhotoUploadServer. But one more meaning of game is - https://vk.com/dev/stories.getVideoUploadServer
    String? linkText,
    String? linkUrl,
    int? groupId,
    // TODO: Implement the class - https://vk.com/objects/clickable_stickers
    Json? clickableStickers,
  }) async {
    final data = await _api.call("stories.getVideoUploadServer", {
      if (addToNews != null) "add_to_news": addToNews,
      if (userIds != null) "user_ids": userIds.join(","),
      if (replyToStory != null) "reply_to_story": replyToStory,
      if (linkText != null) "link_text": linkText,
      if (linkUrl != null) "link_url": linkUrl,
      if (groupId != null) "group_id": groupId,
      if (clickableStickers != null) "clickable_stickers": clickableStickers,
    });

    return data.response;
  }

  /// Returns a list of users who viewed history.
  Future<Json> getViewers({
    required int ownerId,
    required int storyId,
    int? count,
    int? offset,
    bool? extended,
  }) async {
    final data = await _api.call("stories.getViewers", {
      "owner_id": ownerId,
      "story_id": storyId,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Hides all the answers of the author over the past day on the history of the current user.
  Future<bool> hideAllReplies({required int ownerId, int? groupId}) async {
    final data = await _api.call("stories.hideAllReplies", {
      "owner_id": ownerId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response == 1;
  }

  /// Hides a response to history.
  Future<bool> hideReply({required int ownerId, required int storyId}) async {
    final data = await _api.call("stories.hideReply", {
      "owner_id": ownerId,
      "story_id": storyId,
    });

    return data.response == 1;
  }

  /// Saves history. In [uploadResults], you need to transfer the string that Returns [getPhotoUploadServer] or [getVideoUploadServer]
  Future<Json> save({
    required List<String> uploadResults,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("stories.save", {
      "upload_results": uploadResults.join(","),
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns search results by stories.
  Future<Json> search({
    String? q,
    int? placeId,
    num? latitude,
    num? longitude,
    int? radius,
    int? mentionedId,
    int? count,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("stories.search", {
      if (q != null) "q": q,
      if (placeId != null) "place_id": placeId,
      if (latitude != null) "latitude": latitude,
      if (longitude != null) "longitude": longitude,
      if (radius != null) "radius": radius,
      if (mentionedId != null) "mentioned_id": mentionedId,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Sends Fidbeck to history.
  Future<T> sendInteraction<T extends Object>({
    required String accessKey,
    String? message,
    bool? isBroadcast,
    bool? isAnonymous,
    bool? unseenMarker,
  }) async {
    final data = await _api.call("stories.sendInteraction", {
      "access_key": accessKey,
      if (message != null) "message": message,
      if (isBroadcast != null) "is_broadcast": isBroadcast,
      if (isAnonymous != null) "is_anonymous": isAnonymous,
      if (unseenMarker != null) "unseen_marker": unseenMarker,
    });

    return data.response;
  }

  /// Allows you to return the user or community to the list of displayed stories in the tape.
  Future<bool> unbanOwner({required List<int> ownersIds}) async {
    final data = await _api.call("stories.unbanOwner", {
      "owners_ids": ownersIds.join(","),
    });

    return data.response == 1;
  }
}
