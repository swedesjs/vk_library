import 'package:vk_library/src/api.dart';

class Stats {
  final API _api;

  Stats(this._api);

  /// Returns statistics of a community or an application.
  Future<Map<String, dynamic>> get({
    int? groupId,
    int? appId,
    int? timestampFrom,
    int? timestampTo,
    String? interval,
    int? intervalsCount,
    List<String>? filters,
    List<String>? statsGroups,
    bool? extended,
  }) =>
      _api.request('stats.get', {
        if (groupId != null) 'group_id': groupId,
        if (appId != null) 'app_id': appId,
        if (timestampFrom != null) 'timestamp_from': timestampFrom,
        if (timestampTo != null) 'timestamp_to': timestampTo,
        if (interval != null) 'interval': interval,
        if (intervalsCount != null) 'intervals_count': intervalsCount,
        if (filters != null) 'filters': filters.join(','),
        if (statsGroups != null) 'stats_groups': statsGroups.join(','),
        if (extended != null) 'extended': extended,
      });

  /// Returns stats for a wall post.
  Future<Map<String, dynamic>> getPostReach({
    required String ownerId,
    required List<int> postIds,
  }) =>
      _api.request('stats.getPostReach', {
        'owner_id': ownerId,
        'post_ids': postIds.join(','),
      });

  Future<Map<String, dynamic>> trackVisitor() =>
      _api.request('stats.trackVisitor');
}
