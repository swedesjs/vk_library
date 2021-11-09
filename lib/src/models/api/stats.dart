part of vk_library;

/// A class for using the [`stats`](https://vk.com/dev/stats) methods.
class Stats {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Stats(API api) : _callMethod = api._callMethod("stats");

  /// Returns community statistics or applications.
  Future<Json> get({
    int? groupId,
    int? appId,
    int? timestampFrom,
    int? timestampTo,
    // TODO: Implement the enum - https://vk.com/dev/stats.get
    String? interval,
    int? intervalsCount,
    List<String>? filters,
    // TODO: Implement the enum - https://vk.com/dev/stats.get
    List<String>? statsGroups,
    bool? extended,
  }) async {
    final data = await _callMethod("get", {
      if (groupId != null) "group_id": groupId,
      if (appId != null) "app_id": appId,
      if (timestampFrom != null) "timestamp_from": timestampFrom,
      if (timestampTo != null) "timestamp_to": timestampTo,
      if (interval != null) "interval": interval,
      if (intervalsCount != null) "intervals_count": intervalsCount,
      if (filters != null) "filters": filters.join(","),
      if (statsGroups != null) "stats_groups": statsGroups.join(","),
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns statistics to record on the wall.
  Future<List<Json>> getPostReach({
    required int ownerId,
    required List<int> postIds,
  }) async {
    final data = await _callMethod("getPostReach", {
      "owner_id": ownerId,
      "post_ids": postIds.join(","),
    });

    return data.response;
  }

  /// Adds data on the current session to the statistics of the application attendance.
  Future<bool> trackVisitor() async {
    final data = await _callMethod("trackVisitor", const {});

    return data.response == 1;
  }
}
