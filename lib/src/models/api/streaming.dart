part of vk_library;

/// A class for using the [`streaming`](https://vk.com/dev/streaming) methods.
class Streaming {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Streaming(API api) : _callMethod = api._callMethod("streaming");

  /// Allows you to get data for connecting to [Streaming API](https://vk.com/dev/streaming_api).
  Future<Json> getServerUrl() async {
    final data = await _callMethod("getServerUrl", const {});

    return data.response;
  }

  /// Allows you to get the value of the threshold for the Streaming API.
  Future<Json> getSettings() async {
    final data = await _callMethod("getSettings", const {});

    return data.response;
  }

  /// Allows you to get statistics for prepared and delivered Streaming API events.
  Future<List<Json>> getStats({
    // TODO: Implement the enum - https://vk.com/dev/streaming.getStats
    String? type,
    // TODO: Implement the enum - https://vk.com/dev/streaming.getStats
    String? interval,
    int? startTime,
    int? endTime,
  }) async {
    final data = await _callMethod("getStats", {
      if (type != null) "type": type,
      if (interval != null) "interval": interval,
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
    });

    return data.response;
  }

  /// Allows you to get the basis of the word.
  Future<T> getStem<T extends Object>({required String word}) async {
    final data = await _callMethod("getStem", {"word": word});

    return data.response;
  }

  /// Allows you to set the value of the threshold for the Streaming API.
  Future<bool> setSettings({
    // TODO: Implement the enum - https://vk.com/dev/streaming.setSettings
    String? monthlyTier,
  }) async {
    final data = await _callMethod("setSettings", {
      if (monthlyTier != null) "monthly_tier": monthlyTier,
    });

    return data.response == 1;
  }
}
