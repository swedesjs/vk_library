import 'package:vk_library/src/api.dart';

class Video {
  final API _api;

  Video(this._api);

  /// Adds a video to a user or community page.
  Future<Map<String, dynamic>> add({
    int? targetId,
    required int videoId,
    required int ownerId,
  }) =>
      _api.request('video.add', {
        if (targetId != null) 'target_id': targetId,
        'video_id': videoId,
        'owner_id': ownerId,
      });

  /// Creates an empty album for videos.
  Future<Map<String, dynamic>> addAlbum({
    int? groupId,
    String? title,
    List<String>? privacy,
  }) =>
      _api.request('video.addAlbum', {
        if (groupId != null) 'group_id': groupId,
        if (title != null) 'title': title,
        if (privacy != null) 'privacy': privacy.join(','),
      });

  Future<Map<String, dynamic>> addToAlbum({
    int? targetId,
    int? albumId,
    List<int>? albumIds,
    required int ownerId,
    required int videoId,
  }) =>
      _api.request('video.addToAlbum', {
        if (targetId != null) 'target_id': targetId,
        if (albumId != null) 'album_id': albumId,
        if (albumIds != null) 'album_ids': albumIds.join(','),
        'owner_id': ownerId,
        'video_id': videoId,
      });

  /// Adds a new comment on a video.
  Future<Map<String, dynamic>> createComment({
    int? ownerId,
    required int videoId,
    String? message,
    List<String>? attachments,
    bool? fromGroup,
    int? replyToComment,
    int? stickerId,
    String? guid,
  }) =>
      _api.request('video.createComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'video_id': videoId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
        if (fromGroup != null) 'from_group': fromGroup,
        if (replyToComment != null) 'reply_to_comment': replyToComment,
        if (stickerId != null) 'sticker_id': stickerId,
        if (guid != null) 'guid': guid,
      });

  /// Deletes a video from a user or community page.
  Future<Map<String, dynamic>> delete({
    required int videoId,
    int? ownerId,
    int? targetId,
  }) =>
      _api.request('video.delete', {
        'video_id': videoId,
        if (ownerId != null) 'owner_id': ownerId,
        if (targetId != null) 'target_id': targetId,
      });

  /// Deletes a video album.
  Future<Map<String, dynamic>> deleteAlbum({
    int? groupId,
    required int albumId,
  }) =>
      _api.request('video.deleteAlbum', {
        if (groupId != null) 'group_id': groupId,
        'album_id': albumId,
      });

  /// Deletes a comment on a video.
  Future<Map<String, dynamic>> deleteComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('video.deleteComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  /// Edits information about a video on a user or community page.
  Future<Map<String, dynamic>> edit({
    int? ownerId,
    required int videoId,
    String? name,
    String? desc,
    List<String>? privacyView,
    List<String>? privacyComment,
    bool? noComments,
    bool? repeat,
  }) =>
      _api.request('video.edit', {
        if (ownerId != null) 'owner_id': ownerId,
        'video_id': videoId,
        if (name != null) 'name': name,
        if (desc != null) 'desc': desc,
        if (privacyView != null) 'privacy_view': privacyView.join(','),
        if (privacyComment != null) 'privacy_comment': privacyComment.join(','),
        if (noComments != null) 'no_comments': noComments,
        if (repeat != null) 'repeat': repeat,
      });

  /// Edits the title of a video album.
  Future<Map<String, dynamic>> editAlbum({
    int? groupId,
    required int albumId,
    required String title,
    List<String>? privacy,
  }) =>
      _api.request('video.editAlbum', {
        if (groupId != null) 'group_id': groupId,
        'album_id': albumId,
        'title': title,
        if (privacy != null) 'privacy': privacy.join(','),
      });

  /// Edits the text of a comment on a video.
  Future<Map<String, dynamic>> editComment({
    int? ownerId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) =>
      _api.request('video.editComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
      });

  /// Returns detailed information about videos.
  Future<Map<String, dynamic>> get({
    int? ownerId,
    List<String>? videos,
    int? albumId,
    int? count,
    int? offset,
    bool? extended,
    List<String>? fields,
  }) =>
      _api.request('video.get', {
        if (ownerId != null) 'owner_id': ownerId,
        if (videos != null) 'videos': videos.join(','),
        if (albumId != null) 'album_id': albumId,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns video album info
  Future<Map<String, dynamic>> getAlbumById({
    int? ownerId,
    required int albumId,
  }) =>
      _api.request('video.getAlbumById', {
        if (ownerId != null) 'owner_id': ownerId,
        'album_id': albumId,
      });

  /// Returns a list of video albums owned by a user or community.
  Future<Map<String, dynamic>> getAlbums({
    int? ownerId,
    int? offset,
    int? count,
    bool? extended,
    bool? needSystem,
  }) =>
      _api.request('video.getAlbums', {
        if (ownerId != null) 'owner_id': ownerId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (needSystem != null) 'need_system': needSystem,
      });

  Future<Map<String, dynamic>> getAlbumsByVideo({
    int? targetId,
    required int ownerId,
    required int videoId,
    bool? extended,
  }) =>
      _api.request('video.getAlbumsByVideo', {
        if (targetId != null) 'target_id': targetId,
        'owner_id': ownerId,
        'video_id': videoId,
        if (extended != null) 'extended': extended,
      });

  /// Returns a list of comments on a video.
  Future<Map<String, dynamic>> getComments({
    int? ownerId,
    required int videoId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    String? sort,
    bool? extended,
    List<String>? fields,
  }) =>
      _api.request('video.getComments', {
        if (ownerId != null) 'owner_id': ownerId,
        'video_id': videoId,
        if (needLikes != null) 'need_likes': needLikes,
        if (startCommentId != null) 'start_comment_id': startCommentId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (sort != null) 'sort': sort,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> removeFromAlbum({
    int? targetId,
    int? albumId,
    List<int>? albumIds,
    required int ownerId,
    required int videoId,
  }) =>
      _api.request('video.removeFromAlbum', {
        if (targetId != null) 'target_id': targetId,
        if (albumId != null) 'album_id': albumId,
        if (albumIds != null) 'album_ids': albumIds.join(','),
        'owner_id': ownerId,
        'video_id': videoId,
      });

  /// Reorders the album in the list of user video albums.
  Future<Map<String, dynamic>> reorderAlbums({
    int? ownerId,
    required int albumId,
    int? before,
    int? after,
  }) =>
      _api.request('video.reorderAlbums', {
        if (ownerId != null) 'owner_id': ownerId,
        'album_id': albumId,
        if (before != null) 'before': before,
        if (after != null) 'after': after,
      });

  /// Reorders the video in the video album.
  Future<Map<String, dynamic>> reorderVideos({
    int? targetId,
    int? albumId,
    required int ownerId,
    required int videoId,
    int? beforeOwnerId,
    int? beforeVideoId,
    int? afterOwnerId,
    int? afterVideoId,
  }) =>
      _api.request('video.reorderVideos', {
        if (targetId != null) 'target_id': targetId,
        if (albumId != null) 'album_id': albumId,
        'owner_id': ownerId,
        'video_id': videoId,
        if (beforeOwnerId != null) 'before_owner_id': beforeOwnerId,
        if (beforeVideoId != null) 'before_video_id': beforeVideoId,
        if (afterOwnerId != null) 'after_owner_id': afterOwnerId,
        if (afterVideoId != null) 'after_video_id': afterVideoId,
      });

  /// Reports (submits a complaint about) a video.
  Future<Map<String, dynamic>> report({
    required int ownerId,
    required int videoId,
    int? reason,
    String? comment,
    String? searchQuery,
  }) =>
      _api.request('video.report', {
        'owner_id': ownerId,
        'video_id': videoId,
        if (reason != null) 'reason': reason,
        if (comment != null) 'comment': comment,
        if (searchQuery != null) 'search_query': searchQuery,
      });

  /// Reports (submits a complaint about) a comment on a video.
  Future<Map<String, dynamic>> reportComment({
    required int ownerId,
    required int commentId,
    int? reason,
  }) =>
      _api.request('video.reportComment', {
        'owner_id': ownerId,
        'comment_id': commentId,
        if (reason != null) 'reason': reason,
      });

  /// Restores a previously deleted video.
  Future<Map<String, dynamic>> restore({
    required int videoId,
    int? ownerId,
  }) =>
      _api.request('video.restore', {
        'video_id': videoId,
        if (ownerId != null) 'owner_id': ownerId,
      });

  /// Restores a previously deleted comment on a video.
  Future<Map<String, dynamic>> restoreComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('video.restoreComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  /// Returns a server address (required for upload) and video data.
  Future<Map<String, dynamic>> save({
    String? name,
    String? description,
    bool? isPrivate,
    bool? wallpost,
    String? link,
    int? groupId,
    int? albumId,
    List<String>? privacyView,
    List<String>? privacyComment,
    bool? noComments,
    bool? repeat,
    bool? compression,
  }) =>
      _api.request('video.save', {
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (isPrivate != null) 'is_private': isPrivate,
        if (wallpost != null) 'wallpost': wallpost,
        if (link != null) 'link': link,
        if (groupId != null) 'group_id': groupId,
        if (albumId != null) 'album_id': albumId,
        if (privacyView != null) 'privacy_view': privacyView.join(','),
        if (privacyComment != null) 'privacy_comment': privacyComment.join(','),
        if (noComments != null) 'no_comments': noComments,
        if (repeat != null) 'repeat': repeat,
        if (compression != null) 'compression': compression,
      });

  /// Returns a list of videos under the set search criterion.
  Future<Map<String, dynamic>> search({
    String? q,
    int? sort,
    int? hd,
    bool? adult,
    bool? live,
    List<String>? filters,
    bool? searchOwn,
    int? offset,
    int? longer,
    int? shorter,
    int? count,
    bool? extended,
  }) =>
      _api.request('video.search', {
        if (q != null) 'q': q,
        if (sort != null) 'sort': sort,
        if (hd != null) 'hd': hd,
        if (adult != null) 'adult': adult,
        if (live != null) 'live': live,
        if (filters != null) 'filters': filters.join(','),
        if (searchOwn != null) 'search_own': searchOwn,
        if (offset != null) 'offset': offset,
        if (longer != null) 'longer': longer,
        if (shorter != null) 'shorter': shorter,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
      });
}
