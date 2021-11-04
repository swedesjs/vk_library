part of vk_library;

/// A class for using the [`fave`](https://vk.com/dev/fave) methods.
class Fave {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Fave(API api) : _callMethod = api._callMethod("fave");

  /// Bookmarks the article.
  Future<bool> addArticle({required String url}) async {
    final data = await _callMethod("addArticle", {"url": url});

    return data.response == 1;
  }

  /// Adds a link to bookmarks.
  Future<bool> addLink({required String link}) async {
    final data = await _callMethod("addLink", {"link": link});

    return data.response == 1;
  }

  /// Add community or user to bookmarks.
  Future<bool> addPage({int? userId, int? groupId}) async {
    final data = await _callMethod("addPage", {
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
    final data = await _callMethod("addPost", {
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
    final data = await _callMethod("addProduct", {
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
    final data = await _callMethod("addTag", {
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
    final data = await _callMethod("addVideo", {
      "owner_id": ownerId,
      "id": id,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response == 1;
  }

  /// Edits a label.
  Future<bool> editTag({required int id, required String name}) async {
    final data = await _callMethod("editTag", {"id": id, "name": name});

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
    final data = await _callMethod("get", {
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
    final data = await _callMethod("getPages", {
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
    final data = await _callMethod("getTags", const {});

    return data.response;
  }

  /// Marks bookmarks as viewed.
  Future<bool> markSeen() async {
    final data = await _callMethod("markSeen", const {});

    return data.response == 1;
  }

  /// Removes an article from bookmarks.
  Future<bool> removeArticle({
    required int ownerId,
    required int articleId,
    String? ref,
  }) async {
    final data = await _callMethod("removeArticle", {
      "owner_id": ownerId,
      "article_id": articleId,
      if (ref != null) "ref": ref,
    });

    return data.response == 1;
  }

  /// Removes a link from the user's bookmark list.
  Future<bool> removeLink({int? linkId}) async {
    final data = await _callMethod("removeLink", {"link_id": linkId});

    return data.response == 1;
  }

  /// Removes the community or user page from bookmarks.
  Future<bool> removePage({int? userId, int? groupId}) async {
    final data = await _callMethod("removePage", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response == 1;
  }

  /// Removes an entry on a user's or community's wall from bookmarks.
  Future<bool> removePost({required int ownerId, required int id}) async {
    final data = await _callMethod("removePost", {
      "owner_id": ownerId,
      "id": id,
    });

    return data.response == 1;
  }

  /// Removes an item from bookmarks.
  Future<bool> removeProduct({required int ownerId, required int id}) async {
    final data = await _callMethod("removeProduct", {
      "owner_id": ownerId,
      "id": id,
    });

    return data.response == 1;
  }

  /// Removes the bookmark mark.
  Future<bool> removeTag({required int id}) async {
    final data = await _callMethod("removeTag", {"id": id});

    return data.response == 1;
  }

  /// Removes the video from the bookmark list.
  Future<bool> removeVideo({required int ownerId, required int id}) async {
    final data = await _callMethod("removeVideo", {
      "owner_id": ownerId,
      "id": id,
    });

    return data.response == 1;
  }

  /// Changes the order of the bookmark labels in the list.
  Future<bool> reorderTags({required List<int> ids}) async {
    final data = await _callMethod("reorderTags", {"ids": ids.join(",")});

    return data.response == 1;
  }

  /// Sets a label for a user or community page.
  Future<bool> setPageTags({
    int? userId,
    int? groupId,
    List<int>? tagIds,
  }) async {
    final data = await _callMethod("setPageTags", {
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
    final data = await _callMethod("setTags", {
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
    final data = await _callMethod("trackPageInteraction", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response == 1;
  }
}
