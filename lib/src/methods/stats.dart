import 'package:vk_library/src/api.dart';

class Stats {
  final API _api;

  Stats(this._api);

  Future<Map<String, dynamic>> get({
    int? groupId,
    int? appId,
    int? timestampFrom,
    int? timestampTo,
    String? interval,
    int? intervalsCount,
    dynamic filters,
    dynamic statsGroups,
    bool? extended,
  }) =>
      _api.request('stats.get', {
        if (groupId != null) 'group_id': groupId,
        if (appId != null) 'app_id': appId,
        if (timestampFrom != null) 'timestamp_from': timestampFrom,
        if (timestampTo != null) 'timestamp_to': timestampTo,
        if (interval != null) 'interval': interval,
        if (intervalsCount != null) 'intervals_count': intervalsCount,
        if (filters != null) 'filters': filters,
        if (statsGroups != null) 'stats_groups': statsGroups,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getPostReach({
    required String ownerId,
    required dynamic postIds,
  }) =>
      _api.request('stats.getPostReach', {
        'owner_id': ownerId,
        'post_ids': postIds,
      });

  Future<Map<String, dynamic>> trackVisitor() =>
      _api.request('stats.trackVisitor');
}
