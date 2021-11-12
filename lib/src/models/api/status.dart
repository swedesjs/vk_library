part of vk_library;

/// A class for using the [`status`](https://vk.com/dev/status) methods.
class Status {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Status(this._api);

  /// Gets the status text for a user or community.
  Future<Json> get({int? userId, int? groupId}) async {
    final data = await _api.call("status.get", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Sets a new status to the current user or community.
  Future<Json> set({String? text, int? groupId}) async {
    final data = await _api.call("status.set", {
      if (text != null) "text": text,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }
}
