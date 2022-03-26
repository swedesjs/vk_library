import 'package:vk_library/src/api.dart';

class Pages {
  final API _api;

  Pages(this._api);

  /// Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
  Future<Map<String, dynamic>> clearCache({
    required String url,
  }) =>
      _api.request('pages.clearCache', {
        'url': url,
      });

  /// Returns information about a wiki page.
  Future<Map<String, dynamic>> get({
    int? ownerId,
    int? pageId,
    bool? global,
    bool? sitePreview,
    String? title,
    bool? needSource,
    bool? needHtml,
  }) =>
      _api.request('pages.get', {
        if (ownerId != null) 'owner_id': ownerId,
        if (pageId != null) 'page_id': pageId,
        if (global != null) 'global': global,
        if (sitePreview != null) 'site_preview': sitePreview,
        if (title != null) 'title': title,
        if (needSource != null) 'need_source': needSource,
        if (needHtml != null) 'need_html': needHtml,
      });

  /// Returns a list of all previous versions of a wiki page.
  Future<Map<String, dynamic>> getHistory({
    required int pageId,
    int? groupId,
    int? userId,
  }) =>
      _api.request('pages.getHistory', {
        'page_id': pageId,
        if (groupId != null) 'group_id': groupId,
        if (userId != null) 'user_id': userId,
      });

  /// Returns a list of wiki pages in a group.
  Future<Map<String, dynamic>> getTitles({
    int? groupId,
  }) =>
      _api.request('pages.getTitles', {
        if (groupId != null) 'group_id': groupId,
      });

  /// Returns the text of one of the previous versions of a wiki page.
  Future<Map<String, dynamic>> getVersion({
    required int versionId,
    int? groupId,
    int? userId,
    bool? needHtml,
  }) =>
      _api.request('pages.getVersion', {
        'version_id': versionId,
        if (groupId != null) 'group_id': groupId,
        if (userId != null) 'user_id': userId,
        if (needHtml != null) 'need_html': needHtml,
      });

  /// Returns HTML representation of the wiki markup.
  Future<Map<String, dynamic>> parseWiki({
    required String text,
    int? groupId,
  }) =>
      _api.request('pages.parseWiki', {
        'text': text,
        if (groupId != null) 'group_id': groupId,
      });

  /// Saves the text of a wiki page.
  Future<Map<String, dynamic>> save({
    String? text,
    int? pageId,
    int? groupId,
    int? userId,
    String? title,
  }) =>
      _api.request('pages.save', {
        if (text != null) 'text': text,
        if (pageId != null) 'page_id': pageId,
        if (groupId != null) 'group_id': groupId,
        if (userId != null) 'user_id': userId,
        if (title != null) 'title': title,
      });

  /// Saves modified read and edit access settings for a wiki page.
  Future<Map<String, dynamic>> saveAccess({
    required int pageId,
    int? groupId,
    int? userId,
    int? view,
    int? edit,
  }) =>
      _api.request('pages.saveAccess', {
        'page_id': pageId,
        if (groupId != null) 'group_id': groupId,
        if (userId != null) 'user_id': userId,
        if (view != null) 'view': view,
        if (edit != null) 'edit': edit,
      });
}
