part of vk_library;

/// A class for using the [`docs`](https://vk.com/dev/docs) methods.
class Docs {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Docs(API api) : _callMethod = api._callMethod("docs");

  /// Copies the document to the documents of the current user.
  Future<int> add({
    required int owner_id,
    required int doc_id,
    String? access_key,
  }) async {
    final data = await _callMethod("add", {
      "owner_id": owner_id,
      "doc_id": doc_id,
      if (access_key != null) "access_key": access_key,
    });

    return data.response;
  }

  /// Deletes a user or group document.
  Future<bool> delete({required int owner_id, required int doc_id}) async {
    final data = await _callMethod("delete", {
      "owner_id": owner_id,
      "doc_id": doc_id,
    });

    return data.response == 1;
  }

  /// Edits a user or group document.
  Future<bool> edit({
    required int owner_id,
    required int doc_id,
    String? title,
    List<String>? tags,
  }) async {
    final data = await _callMethod("edit", {
      "owner_id": owner_id,
      "doc_id": doc_id,
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
    int? owner_id,
    bool? return_tags,
  }) async {
    final data = await _callMethod("get", {
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (type != null) "type": type,
      if (owner_id != null) "owner_id": owner_id,
      if (return_tags != null) "return_tags": return_tags
    });

    return data.response;
  }

  /// Returns information about documents by their IDs.
  Future<Json> getById({List<String>? docs, bool? return_tags}) async {
    final data = await _callMethod("getById", {
      if (docs != null) "docs": docs.join(","),
      if (return_tags != null) "return_tags": return_tags,
    });

    return data.response;
  }

  /// Gets the server address for uploading the document to a private message.
  Future<Json> getMessagesUploadServer({
    // TODO: Implement the enum this parameter - https://vk.com/dev/docs.getMessagesUploadServer
    String? type,
    int? peer_id,
  }) async {
    final data = await _callMethod("getMessagesUploadServer", {
      if (type != null) "type": type,
      if (peer_id != null) "peer_id": peer_id,
    });

    return data.response;
  }

  /// Returns the types of documents available to the user.
  Future<Json> getTypes({required int owner_id}) async {
    final data = await _callMethod("getTypes", {"owner_id": owner_id});

    return data.response;
  }

  /// Returns the server address for uploading documents.
  Future<Json> getUploadServer({int? group_id}) async {
    final data = await _callMethod("getUploadServer", {
      if (group_id != null) "group_id": group_id,
    });

    return data.response;
  }

  /// Returns the server address for uploading documents to the Sent Items folder, for later sending the document to the wall or by personal message.
  Future<Json> getWallUploadServer({int? group_id}) async {
    final data = await _callMethod("getUploadServer", {
      if (group_id != null) "group_id": group_id,
    });

    return data.response;
  }

  /// Saves the document after it has been successfully uploaded to the server.
  Future<List<Json>> save({
    required String file,
    String? title,
    String? tags,
    bool? return_tags,
  }) async {
    final data = await _callMethod("save", {
      "file": file,
      if (title != null) "title": title,
      if (tags != null) "tags": tags,
      if (return_tags != null) "return_tags": return_tags
    });

    return data.response;
  }

  /// Returns search results for documents.
  Future<Json> search({
    required String q,
    bool? search_own,
    int? count,
    int? offset,
    bool? return_tags,
  }) async {
    final data = await _callMethod("search", {
      "q": q,
      if (search_own != null) "search_own": search_own,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (return_tags != null) "return_tags": return_tags,
    });

    return data.response;
  }
}
