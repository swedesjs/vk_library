import 'package:vk_library/src/api.dart';

class Utils {
  final API _api;

  Utils(this._api);

  Future<Map<String, dynamic>> checkLink({
    required String url,
  }) =>
      _api.request('utils.checkLink', {
        'url': url,
      });

  Future<Map<String, dynamic>> deleteFromLastShortened({
    required String key,
  }) =>
      _api.request('utils.deleteFromLastShortened', {
        'key': key,
      });

  Future<Map<String, dynamic>> getLastShortenedLinks({
    int? count,
    int? offset,
  }) =>
      _api.request('utils.getLastShortenedLinks', {
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
      });

  Future<Map<String, dynamic>> getLinkStats({
    required String key,
    String? source,
    String? accessKey,
    String? interval,
    int? intervalsCount,
    bool? extended,
  }) =>
      _api.request('utils.getLinkStats', {
        'key': key,
        if (source != null) 'source': source,
        if (accessKey != null) 'access_key': accessKey,
        if (interval != null) 'interval': interval,
        if (intervalsCount != null) 'intervals_count': intervalsCount,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getServerTime() =>
      _api.request('utils.getServerTime');

  Future<Map<String, dynamic>> getShortLink({
    required String url,
    bool? private,
  }) =>
      _api.request('utils.getShortLink', {
        'url': url,
        if (private != null) 'private': private,
      });

  Future<Map<String, dynamic>> resolveScreenName({
    required String screenName,
  }) =>
      _api.request('utils.resolveScreenName', {
        'screen_name': screenName,
      });
}
