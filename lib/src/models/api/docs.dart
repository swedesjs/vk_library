part of vk_library;

/// A class for using the [`docs`](https://vk.com/dev/docs) methods.
class Docs {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Docs(this._api);

  /// Copies the document to the documents of the current user.
  Future<int> add({
    required int ownerId,
    required int docId,
    String? accessKey,
  }) async {
    final data = await _api.call("docs.add", {
      "owner_id": ownerId,
      "doc_id": docId,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response;
  }

  /// Deletes a user or group document.
  Future<bool> delete({required int ownerId, required int docId}) async {
    final data = await _api.call("docs.delete", {
      "owner_id": ownerId,
      "doc_id": docId,
    });

    return data.response == 1;
  }

  /// Edits a user or group document.
  Future<bool> edit({
    required int ownerId,
    required int docId,
    String? title,
    List<String>? tags,
  }) async {
    final data = await _api.call("docs.edit", {
      "owner_id": ownerId,
      "doc_id": docId,
      if (title != null) "title": title,
      if (tags != null) "tags": tags.join(","),
    });

    return data.response == 1;
  }

  /// Returns extended information about user or community documents.
  Future<Json> get({
    int? count,
    int? offset,
    // TODO: Implement the enum this parameter - https://vk.com/dev/docs.get
    int? type,
    int? ownerId,
    bool? returnTags,
  }) async {
    final data = await _api.call("docs.get", {
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (type != null) "type": type,
      if (ownerId != null) "owner_id": ownerId,
      if (returnTags != null) "return_tags": returnTags
    });

    return data.response;
  }

  /// Returns information about documents by their IDs.
  Future<Json> getById({List<String>? docs, bool? returnTags}) async {
    final data = await _api.call("docs.getById", {
      if (docs != null) "docs": docs.join(","),
      if (returnTags != null) "return_tags": returnTags,
    });

    return data.response;
  }

  /// Gets the server address for uploading the document to a private message.
  Future<Json> getMessagesUploadServer({
    // TODO: Implement the enum this parameter - https://vk.com/dev/docs.getMessagesUploadServer
    String? type,
    int? peerId,
  }) async {
    final data = await _api.call("docs.getMessagesUploadServer", {
      if (type != null) "type": type,
      if (peerId != null) "peer_id": peerId,
    });

    return data.response;
  }

  /// Returns the types of documents available to the user.
  Future<Json> getTypes({required int ownerId}) async {
    final data = await _api.call("docs.getTypes", {"owner_id": ownerId});

    return data.response;
  }

  /// Returns the server address for uploading documents.
  Future<Json> getUploadServer({int? groupId}) async {
    final data = await _api.call("docs.getUploadServer", {
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Returns the server address for uploading documents to the Sent Items folder, for later sending the document to the wall or by personal message.
  Future<Json> getWallUploadServer({int? groupId}) async {
    final data = await _api.call("docs.getUploadServer", {
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Saves the document after it has been successfully uploaded to the server.
  Future<List<Json>> save({
    required String file,
    String? title,
    String? tags,
    bool? returnTags,
  }) async {
    final data = await _api.call("docs.save", {
      "file": file,
      if (title != null) "title": title,
      if (tags != null) "tags": tags,
      if (returnTags != null) "return_tags": returnTags
    });

    return data.response;
  }

  /// Returns search results for documents.
  Future<Json> search({
    required String q,
    bool? searchOwn,
    int? count,
    int? offset,
    bool? returnTags,
  }) async {
    final data = await _api.call("docs.search", {
      "q": q,
      if (searchOwn != null) "search_own": searchOwn,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (returnTags != null) "return_tags": returnTags,
    });

    return data.response;
  }
}
