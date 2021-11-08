part of vk_library;

/// A class for using the [`podcasts`](https://vk.com/dev/podcasts) methods.
class Podcasts {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Podcasts(API api) : _callMethod = api._callMethod("podcasts");
  
  // TODO: Write down the type.
  Future<T> searchPodcast<T extends Object>({
    required String searchString,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("searchPodcast", {
      "search_string": searchString,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }
}
