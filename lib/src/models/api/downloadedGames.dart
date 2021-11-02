part of vk_library;

/// A class for using the [`downloadedGames`](https://vk.com/dev/downloadedGames) methods.
class DownloadedGames {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  DownloadedGames(API api) : _callMethod = api._callMethod("downloadedGames");

  /// Gives information about whether the person bought the game or not.
  Future<Json> getPaidStatus({int? userId}) async {
    final data = await _callMethod("getPaidStatus", {
      if (userId != null) "user_id": userId,
    });

    return data.response;
  }
}
