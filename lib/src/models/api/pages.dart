part of vk_library;

/// A class for using the [`pages`](https://vk.com/dev/pages) methods.
class Pages {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Pages(this._api);

  /// Allows you to clear the cache of individual external pages that can be attached to VKontakte records. After cleaning the cache upon subsequent attachment of the recording link, the page data will be updated.
  Future<bool> clearCache({required String url}) async {
    final data = await _api.call("pages.clearCache", {"url": url});

    return data.response == 1;
  }

  /// Returns information about the wiki.
  Future<Json> get({
    int? ownerId,
    int? pageId,
    bool? global,
    bool? sitePreview,
    String? title,
    bool? needSource,
    bool? needHtml,
  }) async {
    final data = await _api.call("pages.get", {
      if (ownerId != null) "owner_id": ownerId,
      if (pageId != null) "page_id": pageId,
      if (global != null) "global": global,
      if (sitePreview != null) "site_preview": sitePreview,
      if (title != null) "title": title,
      if (needSource != null) "need_source": needSource,
      if (needHtml != null) "need_html": needHtml,
    });

    return data.response;
  }

  /// Returns a list of all the old versions of wiki pages.
  Future<List<Json>> getHistory({
    required int pageId,
    int? groupId,
    int? userId,
  }) async {
    final data = await _api.call("pages.getHistory", {
      "page_id": pageId,
      if (groupId != null) "group_id": groupId,
      if (userId != null) "user_id": userId,
    });

    return data.response;
  }

  /// Returns a list of wiki-pages in the group.
  Future<List<Json>> getTitles({int? groupId}) async {
    final data = await _api.call("pages.getTitles", {
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Returns the text of one of the old versions of the page.
  Future<Json> getVersion({
    required int versionId,
    int? groupId,
    int? userId,
    bool? needHtml,
  }) async {
    final data = await _api.call("pages.getVersion", {
      "version_id": versionId,
      if (groupId != null) "group_id": groupId,
      if (userId != null) "user_id": userId,
      if (needHtml != null) "need_html": needHtml,
    });

    return data.response;
  }

  /// Returns the HTML representation of the wikie markup.
  Future<String> parseWiki({required String text, int? groupId}) async {
    final data = await _api.call("pages.parseWiki", {
      "text": text,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Saves the text of the wiki page.
  Future<int> save({
    String? text,
    int? pageId,
    int? groupId,
    int? userId,
    String? title,
  }) async {
    final data = await _api.call("pages.save", {
      if (text != null) "text": text,
      if (pageId != null) "page_id": pageId,
      if (groupId != null) "group_id": groupId,
      if (userId != null) "user_id": userId,
      if (title != null) "title": title,
    });

    return data.response;
  }

  /// Saves new reading and editing of the Wika-Page.
  Future<int> saveAccess({
    required int pageId,
    int? groupId,
    int? userId,
    // TODO: Implement the enum - https://vk.com/dev/pages.saveAccess
    int? view,
    // TODO: Implement the enum - https://vk.com/dev/pages.saveAccess
    int? edit,
  }) async {
    final data = await _api.call("pages.saveAccess", {
      "page_id": pageId,
      if (groupId != null) "group_id": groupId,
      if (userId != null) "user_id": userId,
      if (view != null) "view": view,
      if (edit != null) "edit": edit,
    });

    return data.response;
  }
}
