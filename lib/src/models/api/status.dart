part of vk_library;

/// A class for using the [`status`](https://vk.com/dev/status) methods.
class Status {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Status(API api) : _callMethod = api._callMethod("status");

  /// Gets the status text for a user or community.
  Future<Json> get({int? userId, int? groupId}) async {
    final data = await _callMethod("get", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Sets a new status to the current user or community.
  Future<Json> set({String? text, int? groupId}) async {
    final data = await _callMethod("set", {
      if (text != null) "text": text,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }
}
