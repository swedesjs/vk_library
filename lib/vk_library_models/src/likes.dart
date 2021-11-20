part of vk_library_models;

/// A class for using the [`likes`](https://vk.com/dev/likes) methods.
class Likes {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Likes(this._api);

  /// Adds the specified object to the `Like` list of the current user.
  Future<Json> add({
    // TODO: Implement the enum - https://vk.com/dev/likes.add
    required String type,
    int? ownerId,
    required int itemId,
    String? accessKey,
  }) async {
    final data = await _api.call("likes.add", {
      "type": type,
      if (ownerId != null) "owner_id": ownerId,
      "item_id": itemId,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response;
  }

  /// Removes the specified object from the `Like` list of the current user
  Future<Json> delete({
    // TODO: Implement the enum - https://vk.com/dev/likes.delete
    required String type,
    int? ownerId,
    required int itemId,
    String? accessKey,
  }) async {
    final data = await _api.call("likes.delete", {
      "type": type,
      if (ownerId != null) "owner_id": ownerId,
      "item_id": itemId,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response;
  }

  /// Gets a list of the IDs of the users who added the specified object to their `like` list.
  Future<Json> getList({
    // TODO: Implement the enum - https://vk.com/dev/likes.getList
    required String type,
    int? ownerId,
    int? itemId,
    String? pageUrl,
    // TODO: Implement the enum this parameter - https://vk.com/dev/likes.getList
    String? filter,
    int? friendsOnly,
    bool? extended,
    int? offset,
    int? count,
    bool? skipOwn,
  }) async {
    final data = await _api.call("likes.getList", {
      "type": type,
      if (ownerId != null) "owner_id": ownerId,
      if (itemId != null) "item_id": itemId,
      if (pageUrl != null) "page_url": pageUrl,
      if (filter != null) "filter": filter,
      if (friendsOnly != null) "friends_only": friendsOnly,
      if (extended != null) "extended": extended,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (skipOwn != null) "skip_own": skipOwn,
    });

    return data.response;
  }

  /// Checks if an item is in the `Like` list of the specified user.
  Future<Json> isLiked({
    int? userId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/likes.isLiked
    required String type,
    int? ownerId,
    required int itemId,
  }) async {
    final data = await _api.call("likes.isLiked", {
      if (userId != null) "user_id": userId,
      "type": type,
      if (ownerId != null) "owner_id": ownerId,
      "item_id": itemId,
    });

    return data.response;
  }
}
