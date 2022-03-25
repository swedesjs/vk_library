import 'package:vk_library/src/api.dart';

class Podcasts {
  final API _api;

  Podcasts(this._api);

  Future<Map<String, dynamic>> searchPodcast({
    required String searchString,
    int? offset,
    int? count,
  }) =>
      _api.request('podcasts.searchPodcast', {
        'search_string': searchString,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });
}
