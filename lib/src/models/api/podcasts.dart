part of vk_library;

/// A class for using the [`podcasts`](https://vk.com/dev/podcasts) methods.
class Podcasts {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Podcasts(this._api);

  // TODO: Write down the type.
  Future<T> searchPodcast<T extends Object>({
    required String searchString,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("podcasts.searchPodcast", {
      "search_string": searchString,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }
}
