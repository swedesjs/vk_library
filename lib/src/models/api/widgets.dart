part of vk_library;

/// A class for using the [`widgets`](https://vk.com/dev/widgets) methods.
class Widgets {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Widgets(API api) : _callMethod = api._callMethod("widgets");

  /// Gets a list of comments to the page left through the comment widget.
  Future<Json> getComments({
    int? widgetApiId,
    String? url,
    String? pageId,
    String? order,
    Set<String>? fields,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("getComments", {
      if (widgetApiId != null) "widget_api_id": widgetApiId,
      if (url != null) "url": url,
      if (pageId != null) "page_id": pageId,
      if (order != null) "order": order,
      if (fields != null) "fields": fields.join(","),
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Gets a list of application pages / site on which comment widget or I like it.
  Future<Json> getPages({
    int? widgetApiId,
    // TODO: Implement the enum - https://vk.com/dev/widgets.getPages
    String? order,
    // TODO: Implement the enum - https://vk.com/dev/widgets.getPages
    String? period,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("getPages", {
      if (widgetApiId != null) "widget_api_id": widgetApiId,
      if (order != null) "order": order,
      if (period != null) "period": period,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }
}
