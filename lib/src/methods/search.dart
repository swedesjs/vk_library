import 'package:vk_library/src/api.dart';

class Search {
  final API _api;

  Search(this._api);

  Future<Map<String, dynamic>> getHints({
    String? q,
    int? offset,
    int? limit,
    dynamic filters,
    dynamic fields,
    bool? searchGlobal,
  }) =>
      _api.request('search.getHints', {
        if (q != null) 'q': q,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        if (filters != null) 'filters': filters,
        if (fields != null) 'fields': fields,
        if (searchGlobal != null) 'search_global': searchGlobal,
      });
}
