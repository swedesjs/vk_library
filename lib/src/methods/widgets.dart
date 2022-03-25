import 'package:vk_library/src/api.dart';

class Widgets {
  final API _api;

  Widgets(this._api);

  Future<Map<String, dynamic>> getComments({
    int? widgetApiId,
    String? url,
    String? pageId,
    String? order,
    List<Object>? fields,
    int? offset,
    int? count,
  }) =>
      _api.request('widgets.getComments', {
        if (widgetApiId != null) 'widget_api_id': widgetApiId,
        if (url != null) 'url': url,
        if (pageId != null) 'page_id': pageId,
        if (order != null) 'order': order,
        if (fields != null) 'fields': fields.join(','),
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getPages({
    int? widgetApiId,
    String? order,
    String? period,
    int? offset,
    int? count,
  }) =>
      _api.request('widgets.getPages', {
        if (widgetApiId != null) 'widget_api_id': widgetApiId,
        if (order != null) 'order': order,
        if (period != null) 'period': period,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });
}
