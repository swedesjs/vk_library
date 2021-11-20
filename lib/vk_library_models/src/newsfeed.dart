part of vk_library_models;

/// A class for using the [`newsfeed`](https://vk.com/dev/newsfeed) methods.
class Newsfeed {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Newsfeed(this._api);

  /// Prevents displaying news from specified users and groups in the current user's news feed.
  Future<bool> addBan({List<int>? userIds, List<int>? groupIds}) async {
    final data = await _api.call("newsfeed.addBan", {
      if (userIds != null) "user_ids": userIds.join(","),
      if (groupIds != null) "group_ids": groupIds.join(","),
    });

    return data.response == 1;
  }

  /// Allows displaying news from specified users and groups in the current user's news feed.
  Future<bool> deleteBan({List<int>? userIds, List<int>? groupIds}) async {
    final data = await _api.call("newsfeed.deleteBan", {
      if (userIds != null) "user_ids": userIds.join(","),
      if (groupIds != null) "group_ids": groupIds.join(","),
    });

    return data.response == 1;
  }

  /// The method allows you to delete a custom news list
  Future<bool> deleteList({required int listId}) async {
    final data = await _api.call("newsfeed.deleteList", {"list_id": listId});

    return data.response == 1;
  }

  /// Returns the data needed to display the news list for the current user.
  Future<Json> get({
    // TODO: Implement the enum - https://vk.com/dev/newsfeed.get
    List<String>? filters,
    bool? returnBanned,
    int? startTime,
    int? endTime,
    int? maxPhotos,
    List<String>? sourceIds,
    String? startFrom,
    int? count,
    Set<String>? fields,
    String? section,
  }) async {
    final data = await _api.call("newsfeed.get", {
      if (filters != null) "filters": filters.join(","),
      if (returnBanned != null) "return_banned": returnBanned,
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
      if (maxPhotos != null) "max_photos": maxPhotos,
      if (sourceIds != null) "source_ids": sourceIds.join(","),
      if (startFrom != null) "start_from": startFrom,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (section != null) "section": section,
    });

    return data.response;
  }

  /// Returns a list of users and groups that the current user has hidden from the news feed.
  Future<Json> getBanned({
    bool? extended,
    Set<String>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _api.call("newsfeed.getBanned", {
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.value,
    });

    return data.response;
  }

  /// Returns the data needed to display the comment section in the user's news.
  Future<Json> getComments({
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/newsfeed.get
    List<String>? filters,
    String? reposts,
    int? startTime,
    int? endTime,
    int? lastCommentsCount,
    String? startFrom,
    Set<String>? fields,
  }) async {
    final data = await _api.call("newsfeed.getComments", {
      if (count != null) "count": count,
      if (filters != null) "filters": filters.join(","),
      if (reposts != null) "reposts": reposts,
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
      if (lastCommentsCount != null) "last_comments_count": lastCommentsCount,
      if (startFrom != null) "start_from": startFrom,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns custom news lists.
  Future<Json> getLists({
    List<int>? listIds,
    bool? extended,
  }) async {
    final data = await _api.call("newsfeed.getLists", {
      if (listIds != null) "list_ids": listIds.join(","),
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns a list of user posts on their walls that mention the specified user.
  Future<Json> getMentions({
    int? ownerId,
    int? startTime,
    int? endTime,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("newsfeed.getMentions", {
      if (ownerId != null) "owner_id": ownerId,
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Gets a list of news items recommended to the user.
  Future<Json> getRecommended({
    int? startTime,
    int? endTime,
    int? maxPhotos,
    String? startFrom,
    int? count,
    Set<String>? fields,
  }) async {
    final data = await _api.call("newsfeed.getRecommended", {
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
      if (maxPhotos != null) "max_photos": maxPhotos,
      if (startFrom != null) "start_from": startFrom,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns the communities and users that the current user is encouraged to follow.
  Future<List<Json>> getSuggestedSources({
    int? offset,
    int? count,
    bool? shuffle,
    Set<String>? fields,
  }) async {
    final data = await _api.call("newsfeed.getSuggestedSources", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (shuffle != null) "shuffle": shuffle,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Allows you to hide an object from the news feed.
  Future<bool> ignoreItem({
    // TODO: Implement the enum - https://vk.com/dev/newsfeed.ignoreItem
    required String type,
    int? ownerId,
    int? itemId,
  }) async {
    final data = await _api.call("newsfeed.ignoreItem", {
      "type": type,
      if (ownerId != null) "owner_id": ownerId,
      if (itemId != null) "item_id": itemId,
    });

    return data.response == 1;
  }

  /// The method allows you to create or edit custom lists for viewing news.
  Future<int> saveList({
    int? listId,
    required String title,
    List<int>? sourceIds,
    bool? noReposts,
  }) async {
    final data = await _api.call("newsfeed.saveList", {
      if (listId != null) "list_id": listId,
      "title": title,
      if (sourceIds != null) "source_ids": sourceIds.join(","),
      if (noReposts != null) "no_reposts": noReposts,
    });

    return data.response;
  }

  /// Returns search results by statuses. The news is returned in order from newer to oldest.
  Future<Json> search({
    String? q,
    bool? extended,
    int? count,
    num? latitude,
    num? longitude,
    int? startTime,
    int? endTime,
    String? startFrom,
    Set<String>? fields,
  }) async {
    final data = await _api.call("newsfeed.search", {
      if (q != null) "q": q,
      if (extended != null) "extended": extended,
      if (count != null) "count": count,
      if (latitude != null) "latitude": latitude,
      if (longitude != null) "longitude": longitude,
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
      if (startFrom != null) "start_from": startFrom,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Allows you to return a previously hidden object to the news feed.
  Future<bool> unignoreItem({
    // TODO: Implement the enum - https://vk.com/dev/newsfeed.unignoreItem
    required String type,
    required int ownerId,
    required int itemId,
    String? trackCode,
  }) async {
    final data = await _api.call("newsfeed.unignoreItem", {
      "type": type,
      "owner_id": ownerId,
      "item_id": itemId,
      if (trackCode != null) "track_code": trackCode,
    });

    return data.response == 1;
  }

  /// Unsubscribes the current user from comments on the specified object.
  Future<bool> unsubscribe({
    // TODO: Implement the enum - https://vk.com/dev/newsfeed.unsubscribe
    required String type,
    int? ownerId,
    required int itemId,
  }) async {
    final data = await _api.call("newsfeed.unsubscribe", {
      "type": type,
      if (ownerId != null) "owner_id": ownerId,
      "item_id": itemId,
    });

    return data.response == 1;
  }
}
