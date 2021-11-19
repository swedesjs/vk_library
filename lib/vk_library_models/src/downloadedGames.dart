part of "../vk_library_models.dart";

/// A class for using the [`downloadedGames`](https://vk.com/dev/downloadedGames) methods.
class DownloadedGames {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const DownloadedGames(this._api);

  /// Gives information about whether the person bought the game or not.
  Future<Json> getPaidStatus({int? userId}) async {
    final data = await _api.call("downloadedGames.getPaidStatus", {
      if (userId != null) "user_id": userId,
    });

    return data.response;
  }
}
