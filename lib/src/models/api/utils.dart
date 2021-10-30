part of vk_library;

/// A class for using the [`utils`](https://vk.com/dev/utils) methods.
class Utils {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Utils(API api) : _callMethod = api._callMethod("utils");

  /// Returns information about whether an external link is blocked on the VKontakte website.
  Future<Json> checkLink({required String url}) async {
    final data = await _callMethod("checkLink", {"url": url});
    return data.response;
  }

  /// Removes the shortcut link from the user's list.
  Future<bool> deleteFromLastShortened({required String key}) async {
    final data = await _callMethod("deleteFromLastShortened", {"key": key});
    return data.response == 1;
  }

  /// Gets a list of shortened links for the current user.
  Future<Json> getLastShortenedLinks({int? count, int? offset}) async {
    final data = await _callMethod("getLastShortenedLinks", {
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
    });

    return data.response;
  }

  /// Returns statistics of clicks on a shortened link.
  Future<Json> getLinkStats({
    required String key,
    String? source,
    String? accessKey,
    // TODO: Implement the enum.
    String? interval,
    int? intervalsCount,
    bool? extended,
  }) async {
    final data = await _callMethod("getLinkStats", {
      "key": key,
      if (source != null) "source": source,
      if (accessKey != null) "access_key": accessKey,
      if (interval != null) "interval": interval,
      if (intervalsCount != null) "intervals_count": intervalsCount,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns the current time on the `VKontakte` server in `unixtime`.
  Future<int> getServerTime() async {
    final data = await _callMethod("getServerTime", const {});

    return data.response;
  }

  /// Lets you get a URL shortened with vk.cc.
  Future<Json> getShortLink({required String url, bool? private}) async {
    final data = await _callMethod("getShortLink", {
      "url": url,
      if (private != null) "private": private,
    });

    return data.response;
  }

  /// Defines the type of object (user, community, application) and its identifier by the short name `screen_name`.
  Future<Json> resolveScreenName({required String screenName}) async {
    final data = await _callMethod("resolveScreenName", {
      "screen_name": screenName,
    });

    return data.response;
  }
}