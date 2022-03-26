import 'package:vk_library/src/api.dart';

class Stories {
  final API _api;

  Stories(this._api);

  /// Allows to hide stories from chosen sources from current user's feed.
  Future<Map<String, dynamic>> banOwner({
    required List<int> ownersIds,
  }) =>
      _api.request('stories.banOwner', {
        'owners_ids': ownersIds.join(','),
      });

  /// Allows to delete story.
  Future<Map<String, dynamic>> delete({
    int? ownerId,
    int? storyId,
    List<String>? stories,
  }) =>
      _api.request('stories.delete', {
        if (ownerId != null) 'owner_id': ownerId,
        if (storyId != null) 'story_id': storyId,
        if (stories != null) 'stories': stories.join(','),
      });

  /// Returns stories available for current user.
  Future<Map<String, dynamic>> get({
    int? ownerId,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('stories.get', {
        if (ownerId != null) 'owner_id': ownerId,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns list of sources hidden from current user's feed.
  Future<Map<String, dynamic>> getBanned({
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('stories.getBanned', {
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns story by its ID.
  Future<Map<String, dynamic>> getById({
    required List<String> stories,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('stories.getById', {
        'stories': stories.join(','),
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns URL for uploading a story with photo.
  Future<Map<String, dynamic>> getPhotoUploadServer({
    bool? addToNews,
    List<int>? userIds,
    String? replyToStory,
    String? linkText,
    String? linkUrl,
    int? groupId,
    String? clickableStickers,
  }) =>
      _api.request('stories.getPhotoUploadServer', {
        if (addToNews != null) 'add_to_news': addToNews,
        if (userIds != null) 'user_ids': userIds.join(','),
        if (replyToStory != null) 'reply_to_story': replyToStory,
        if (linkText != null) 'link_text': linkText,
        if (linkUrl != null) 'link_url': linkUrl,
        if (groupId != null) 'group_id': groupId,
        if (clickableStickers != null) 'clickable_stickers': clickableStickers,
      });

  /// Returns replies to the story.
  Future<Map<String, dynamic>> getReplies({
    required int ownerId,
    required int storyId,
    String? accessKey,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('stories.getReplies', {
        'owner_id': ownerId,
        'story_id': storyId,
        if (accessKey != null) 'access_key': accessKey,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns stories available for current user.
  Future<Map<String, dynamic>> getStats({
    required int ownerId,
    required int storyId,
  }) =>
      _api.request('stories.getStats', {
        'owner_id': ownerId,
        'story_id': storyId,
      });

  /// Allows to receive URL for uploading story with video.
  Future<Map<String, dynamic>> getVideoUploadServer({
    bool? addToNews,
    List<int>? userIds,
    String? replyToStory,
    String? linkText,
    String? linkUrl,
    int? groupId,
    String? clickableStickers,
  }) =>
      _api.request('stories.getVideoUploadServer', {
        if (addToNews != null) 'add_to_news': addToNews,
        if (userIds != null) 'user_ids': userIds.join(','),
        if (replyToStory != null) 'reply_to_story': replyToStory,
        if (linkText != null) 'link_text': linkText,
        if (linkUrl != null) 'link_url': linkUrl,
        if (groupId != null) 'group_id': groupId,
        if (clickableStickers != null) 'clickable_stickers': clickableStickers,
      });

  /// Returns a list of story viewers.
  Future<Map<String, dynamic>> getViewers({
    required int ownerId,
    required int storyId,
    int? count,
    int? offset,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('stories.getViewers', {
        'owner_id': ownerId,
        'story_id': storyId,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Hides all replies in the last 24 hours from the user to current user's stories.
  Future<Map<String, dynamic>> hideAllReplies({
    required int ownerId,
    int? groupId,
  }) =>
      _api.request('stories.hideAllReplies', {
        'owner_id': ownerId,
        if (groupId != null) 'group_id': groupId,
      });

  /// Hides the reply to the current user's story.
  Future<Map<String, dynamic>> hideReply({
    required int ownerId,
    required int storyId,
  }) =>
      _api.request('stories.hideReply', {
        'owner_id': ownerId,
        'story_id': storyId,
      });

  Future<Map<String, dynamic>> save({
    required List<String> uploadResults,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('stories.save', {
        'upload_results': uploadResults.join(','),
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> search({
    String? q,
    int? placeId,
    num? latitude,
    num? longitude,
    int? radius,
    int? mentionedId,
    int? count,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('stories.search', {
        if (q != null) 'q': q,
        if (placeId != null) 'place_id': placeId,
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (radius != null) 'radius': radius,
        if (mentionedId != null) 'mentioned_id': mentionedId,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> sendInteraction({
    required String accessKey,
    String? message,
    bool? isBroadcast,
    bool? isAnonymous,
    bool? unseenMarker,
  }) =>
      _api.request('stories.sendInteraction', {
        'access_key': accessKey,
        if (message != null) 'message': message,
        if (isBroadcast != null) 'is_broadcast': isBroadcast,
        if (isAnonymous != null) 'is_anonymous': isAnonymous,
        if (unseenMarker != null) 'unseen_marker': unseenMarker,
      });

  /// Allows to show stories from hidden sources in current user's feed.
  Future<Map<String, dynamic>> unbanOwner({
    required List<int> ownersIds,
  }) =>
      _api.request('stories.unbanOwner', {
        'owners_ids': ownersIds.join(','),
      });
}
