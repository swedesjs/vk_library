part of vk_library;

/// A class for using the [`notifications`](https://vk.com/dev/notifications) methods.
class Notifications {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Notifications(this._api);

  /// Returns a list of notifications on the responses of other users on the current user account.
  Future<Json> get({
    int? count,
    String? startFrom,
    // TODO: Implement the enum - https://vk.com/dev/notifications.get
    List<String>? filters,
    int? startTime,
    int? endTime,
  }) async {
    final data = await _api.call("notifications.get", {
      if (count != null) "count": count,
      if (startFrom != null) "start_from": startFrom,
      if (filters != null) "filters": filters.join(","),
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
    });

    return data.response;
  }

  /// Resets the counter of unparent alerts on the answers of other users on the record of the current user.
  Future<bool> markAsViewed() async {
    final data = await _api.call("notifications.markAsViewed", const {});

    return data.response == 1;
  }

  /// Sends a notification to the user of the MINI Apps applications.
  Future<List<Json>> sendMessage({
    required List<int> userIds,
    required String message,
    String? fragment,
    int? groupId,
    int? randomId,
    String? sendingMode,
  }) async {
    final data = await _api.call("notifications.sendMessage", {
      "user_ids": userIds.join(","),
      "message": message,
      if (fragment != null) "fragment": fragment,
      if (groupId != null) "group_id": groupId,
      "random_id": randomId ?? Random().nextInt(7575757447487584477),
      if (sendingMode != null) "sending_mode": sendingMode,
    });

    return data.response;
  }
}
