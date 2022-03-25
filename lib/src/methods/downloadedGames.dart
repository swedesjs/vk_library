import 'package:vk_library/src/api.dart';

class DownloadedGames {
  final API _api;

  DownloadedGames(this._api);

  Future<Map<String, dynamic>> getPaidStatus({
    int? userId,
  }) =>
      _api.request('downloadedGames.getPaidStatus', {
        if (userId != null) 'user_id': userId,
      });
}
