part of vk_library;

/// A class for using the [`search`](https://vk.com/dev/search) methods.
class Search {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Search(this._api);

  /// The method allows you to get a quick search results for an arbitrary substring.
  Future<List<Json>> getHints({
    String? q,
    int? offset,
    int? limit,
    // TODO: Implement the enum - https://vk.com/dev/search.getHints
    List<String>? filters,
    Set<String>? fields,
    bool? searchGlobal,
  }) async {
    final data = await _api.call("search.getHints", {
      if (q != null) "q": q,
      if (offset != null) "offset": offset,
      if (limit != null) "limit": limit,
      if (filters != null) "filters": filters.join(","),
      if (fields != null) "fields": fields.join(","),
      if (searchGlobal != null) "search_global": searchGlobal,
    });

    return data.response;
  }
}
