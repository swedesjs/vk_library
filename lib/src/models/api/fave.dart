part of vk_library;

/// A class for using the [`fave`](https://vk.com/dev/fave) methods.
class Fave {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Fave(this._api);

  /// Bookmarks the article.
  Future<bool> addArticle({required String url}) async {
    final data = await _api.call("fave.addArticle", {"url": url});

    return data.response == 1;
  }

  /// Adds a link to bookmarks.
  Future<bool> addLink({required String link}) async {
    final data = await _api.call("fave.addLink", {"link": link});

    return data.response == 1;
  }

  /// Add community or user to bookmarks.
  Future<bool> addPage({int? userId, int? groupId}) async {
    final data = await _api.call("fave.addPage", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response == 1;
  }

  /// Bookmarks an entry from a user's or community's wall.
  Future<bool> addPost({
    required int ownerId,
    required int id,
    String? accessKey,
    String? ref,
    String? trackCode,
    String? source,
  }) async {
    final data = await _api.call("fave.addPost", {
      "owner_id": ownerId,
      "id": id,
      if (accessKey != null) "access_key": accessKey,
      if (ref != null) "ref": ref,
      if (trackCode != null) "track_code": trackCode,
      if (source != null) "source": source,
    });

    return data.response == 1;
  }

  /// Adds a product to bookmarks.
  Future<bool> addProduct({
    required int ownerId,
    required int id,
    String? accessKey,
  }) async {
    final data = await _api.call("fave.addProduct", {
      "owner_id": ownerId,
      "id": id,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response == 1;
  }

  /// Creates a bookmark label.
  Future<Json> addTag({
    String? name,
    // TODO: Implement the enum this parameter - https://vk.com/dev/fave.addTag
    String? position,
  }) async {
    final data = await _api.call("fave.addTag", {
      if (name != null) "name": name,
      if (position != null) "position": position,
    });

    return data.response;
  }

  /// Add video to bookmarks.
  Future<bool> addVideo({
    required int ownerId,
    required int id,
    String? accessKey,
  }) async {
    final data = await _api.call("fave.addVideo", {
      "owner_id": ownerId,
      "id": id,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response == 1;
  }

  /// Edits a label.
  Future<bool> editTag({required int id, required String name}) async {
    final data = await _api.call("fave.editTag", {"id": id, "name": name});

    return data.response == 1;
  }

  /// Returns objects added to the user's bookmarks.
  Future<Json> get({
    bool? extended,
    // TODO: Implement the enum this parameter - https://vk.com/dev/fave.get
    String? itemType,
    int? tagId,
    int? offset,
    int? count,
    Set<String>? fields,
    bool? isFromSnackbar,
  }) async {
    final data = await _api.call("fave.get", {
      if (extended != null) "extended": extended,
      if (itemType != null) "item_type": itemType,
      if (tagId != null) "tag_id": tagId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (isFromSnackbar != null) "is_from_snackbar": isFromSnackbar,
    });

    return data.response;
  }

  /// Returns bookmarked user and community pages.
  Future<Json> getPages({
    int? offset,
    int? count,
    // TODO: Implement the enum this parameter - https://vk.com/dev/fave.getPages
    String? type,
    Set<String>? fields,
    int? tagId,
  }) async {
    final data = await _api.call("fave.getPages", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (type != null) "type": type,
      if (fields != null) "fields": fields.join(","),
      if (tagId != null) "tag_id": tagId,
    });

    return data.response;
  }

  /// Returns a list of placemarks in bookmarks.
  Future<Json> getTags() async {
    final data = await _api.call("fave.getTags", const {});

    return data.response;
  }

  /// Marks bookmarks as viewed.
  Future<bool> markSeen() async {
    final data = await _api.call("fave.markSeen", const {});

    return data.response == 1;
  }

  /// Removes an article from bookmarks.
  Future<bool> removeArticle({
    required int ownerId,
    required int articleId,
    String? ref,
  }) async {
    final data = await _api.call("fave.removeArticle", {
      "owner_id": ownerId,
      "article_id": articleId,
      if (ref != null) "ref": ref,
    });

    return data.response == 1;
  }

  /// Removes a link from the user's bookmark list.
  Future<bool> removeLink({int? linkId}) async {
    final data = await _api.call("fave.removeLink", {"link_id": linkId});

    return data.response == 1;
  }

  /// Removes the community or user page from bookmarks.
  Future<bool> removePage({int? userId, int? groupId}) async {
    final data = await _api.call("fave.removePage", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response == 1;
  }

  /// Removes an entry on a user's or community's wall from bookmarks.
  Future<bool> removePost({required int ownerId, required int id}) async {
    final data = await _api.call("fave.removePost", {
      "owner_id": ownerId,
      "id": id,
    });

    return data.response == 1;
  }

  /// Removes an item from bookmarks.
  Future<bool> removeProduct({required int ownerId, required int id}) async {
    final data = await _api.call("fave.removeProduct", {
      "owner_id": ownerId,
      "id": id,
    });

    return data.response == 1;
  }

  /// Removes the bookmark mark.
  Future<bool> removeTag({required int id}) async {
    final data = await _api.call("fave.removeTag", {"id": id});

    return data.response == 1;
  }

  /// Removes the video from the bookmark list.
  Future<bool> removeVideo({required int ownerId, required int id}) async {
    final data = await _api.call("fave.removeVideo", {
      "owner_id": ownerId,
      "id": id,
    });

    return data.response == 1;
  }

  /// Changes the order of the bookmark labels in the list.
  Future<bool> reorderTags({required List<int> ids}) async {
    final data = await _api.call("fave.reorderTags", {"ids": ids.join(",")});

    return data.response == 1;
  }

  /// Sets a label for a user or community page.
  Future<bool> setPageTags({
    int? userId,
    int? groupId,
    List<int>? tagIds,
  }) async {
    final data = await _api.call("fave.setPageTags", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
      if (tagIds != null) "tag_ids": tagIds.join(","),
    });

    return data.response == 1;
  }

  /// Sets a mark to the selected item in the bookmark list.
  Future<bool> setTags({
    // TODO: Implement the enum this parameter - https://vk.com/dev/fave.setTags
    String? itemType,
    int? itemOwnerId,
    int? itemId,
    List<int>? tagIds,
    int? linkId,
    String? linkUrl,
  }) async {
    final data = await _api.call("fave.setTags", {
      if (itemType != null) "item_type": itemType,
      if (itemOwnerId != null) "item_owner_id": itemOwnerId,
      if (itemId != null) "item_id": itemId,
      if (tagIds != null) "tag_ids": tagIds.join(","),
      if (linkId != null) "link_id": linkId,
      if (linkUrl != null) "link_url": linkUrl,
    });

    return data.response == 1;
  }

  /// Sets a user's or community's page to the top bookmarks.
  Future<bool> trackPageInteraction({int? userId, int? groupId}) async {
    final data = await _api.call("fave.trackPageInteraction", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response == 1;
  }
}
