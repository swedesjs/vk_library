import 'package:vk_library/src/api.dart';

class Search {
  final API _api;

  Search(this._api);

  /// Allows the programmer to do a quick search for any substring.
  Future<Map<String, dynamic>> getHints({
    String? q,
    int? offset,
    int? limit,
    List<String>? filters,
    List<String>? fields,
    bool? searchGlobal,
  }) =>
      _api.request('search.getHints', {
        if (q != null) 'q': q,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        if (filters != null) 'filters': filters.join(','),
        if (fields != null) 'fields': fields.join(','),
        if (searchGlobal != null) 'search_global': searchGlobal,
      });
}
