import 'package:vk_library/src/api.dart';

class Wall {
  final API _api;

  Wall(this._api);

  Future<Map<String, dynamic>> checkCopyrightLink({
    required String link,
  }) =>
      _api.request('wall.checkCopyrightLink', {
        'link': link,
      });

  Future<Map<String, dynamic>> closeComments({
    required int ownerId,
    required int postId,
  }) =>
      _api.request('wall.closeComments', {
        'owner_id': ownerId,
        'post_id': postId,
      });

  /// Adds a comment to a post on a user wall or community wall.
  Future<Map<String, dynamic>> createComment({
    int? ownerId,
    required int postId,
    int? fromGroup,
    String? message,
    int? replyToComment,
    List<String>? attachments,
    int? stickerId,
    String? guid,
  }) =>
      _api.request('wall.createComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'post_id': postId,
        if (fromGroup != null) 'from_group': fromGroup,
        if (message != null) 'message': message,
        if (replyToComment != null) 'reply_to_comment': replyToComment,
        if (attachments != null) 'attachments': attachments.join(','),
        if (stickerId != null) 'sticker_id': stickerId,
        if (guid != null) 'guid': guid,
      });

  /// Deletes a post from a user wall or community wall.
  Future<Map<String, dynamic>> delete({
    int? ownerId,
    int? postId,
  }) =>
      _api.request('wall.delete', {
        if (ownerId != null) 'owner_id': ownerId,
        if (postId != null) 'post_id': postId,
      });

  /// Deletes a comment on a post on a user wall or community wall.
  Future<Map<String, dynamic>> deleteComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('wall.deleteComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  /// Edits a post on a user wall or community wall.
  Future<Map<String, dynamic>> edit({
    int? ownerId,
    required int postId,
    bool? friendsOnly,
    String? message,
    List<String>? attachments,
    String? services,
    bool? signed,
    int? publishDate,
    num? lat,
    num? long,
    int? placeId,
    bool? markAsAds,
    bool? closeComments,
    int? donutPaidDuration,
    int? posterBkgId,
    int? posterBkgOwnerId,
    String? posterBkgAccessHash,
    String? copyright,
    int? topicId,
  }) =>
      _api.request('wall.edit', {
        if (ownerId != null) 'owner_id': ownerId,
        'post_id': postId,
        if (friendsOnly != null) 'friends_only': friendsOnly,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
        if (services != null) 'services': services,
        if (signed != null) 'signed': signed,
        if (publishDate != null) 'publish_date': publishDate,
        if (lat != null) 'lat': lat,
        if (long != null) 'long': long,
        if (placeId != null) 'place_id': placeId,
        if (markAsAds != null) 'mark_as_ads': markAsAds,
        if (closeComments != null) 'close_comments': closeComments,
        if (donutPaidDuration != null) 'donut_paid_duration': donutPaidDuration,
        if (posterBkgId != null) 'poster_bkg_id': posterBkgId,
        if (posterBkgOwnerId != null) 'poster_bkg_owner_id': posterBkgOwnerId,
        if (posterBkgAccessHash != null)
          'poster_bkg_access_hash': posterBkgAccessHash,
        if (copyright != null) 'copyright': copyright,
        if (topicId != null) 'topic_id': topicId,
      });

  /// Allows to edit hidden post.
  Future<Map<String, dynamic>> editAdsStealth({
    int? ownerId,
    required int postId,
    String? message,
    List<String>? attachments,
    bool? signed,
    num? lat,
    num? long,
    int? placeId,
    String? linkButton,
    String? linkTitle,
    String? linkImage,
    String? linkVideo,
  }) =>
      _api.request('wall.editAdsStealth', {
        if (ownerId != null) 'owner_id': ownerId,
        'post_id': postId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
        if (signed != null) 'signed': signed,
        if (lat != null) 'lat': lat,
        if (long != null) 'long': long,
        if (placeId != null) 'place_id': placeId,
        if (linkButton != null) 'link_button': linkButton,
        if (linkTitle != null) 'link_title': linkTitle,
        if (linkImage != null) 'link_image': linkImage,
        if (linkVideo != null) 'link_video': linkVideo,
      });

  /// Edits a comment on a user wall or community wall.
  Future<Map<String, dynamic>> editComment({
    int? ownerId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) =>
      _api.request('wall.editComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
      });

  /// Returns a list of posts on a user wall or community wall.
  Future<Map<String, dynamic>> get({
    int? ownerId,
    String? domain,
    int? offset,
    int? count,
    String? filter,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('wall.get', {
        if (ownerId != null) 'owner_id': ownerId,
        if (domain != null) 'domain': domain,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (filter != null) 'filter': filter,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns a list of posts from user or community walls by their IDs.
  Future<Map<String, dynamic>> getById({
    required List<String> posts,
    bool? extended,
    int? copyHistoryDepth,
    List<Object>? fields,
  }) =>
      _api.request('wall.getById', {
        'posts': posts.join(','),
        if (extended != null) 'extended': extended,
        if (copyHistoryDepth != null) 'copy_history_depth': copyHistoryDepth,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns a comment on a post on a user wall or community wall.
  Future<Map<String, dynamic>> getComment({
    int? ownerId,
    required int commentId,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('wall.getComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns a list of comments on a post on a user wall or community wall.
  Future<Map<String, dynamic>> getComments({
    int? ownerId,
    int? postId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    String? sort,
    int? previewLength,
    bool? extended,
    List<Object>? fields,
    int? commentId,
    int? threadItemsCount,
  }) =>
      _api.request('wall.getComments', {
        if (ownerId != null) 'owner_id': ownerId,
        if (postId != null) 'post_id': postId,
        if (needLikes != null) 'need_likes': needLikes,
        if (startCommentId != null) 'start_comment_id': startCommentId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (sort != null) 'sort': sort,
        if (previewLength != null) 'preview_length': previewLength,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (commentId != null) 'comment_id': commentId,
        if (threadItemsCount != null) 'thread_items_count': threadItemsCount,
      });

  /// Returns information about reposts of a post on user wall or community wall.
  Future<Map<String, dynamic>> getReposts({
    int? ownerId,
    int? postId,
    int? offset,
    int? count,
  }) =>
      _api.request('wall.getReposts', {
        if (ownerId != null) 'owner_id': ownerId,
        if (postId != null) 'post_id': postId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> openComments({
    required int ownerId,
    required int postId,
  }) =>
      _api.request('wall.openComments', {
        'owner_id': ownerId,
        'post_id': postId,
      });

  /// Pins the post on wall.
  Future<Map<String, dynamic>> pin({
    int? ownerId,
    required int postId,
  }) =>
      _api.request('wall.pin', {
        if (ownerId != null) 'owner_id': ownerId,
        'post_id': postId,
      });

  /// Adds a new post on a user wall or community wall. Can also be used to publish suggested or scheduled posts.
  Future<Map<String, dynamic>> post({
    int? ownerId,
    bool? friendsOnly,
    bool? fromGroup,
    String? message,
    List<String>? attachments,
    String? services,
    bool? signed,
    int? publishDate,
    num? lat,
    num? long,
    int? placeId,
    int? postId,
    String? guid,
    bool? markAsAds,
    bool? closeComments,
    int? donutPaidDuration,
    bool? muteNotifications,
    String? copyright,
    int? topicId,
  }) =>
      _api.request('wall.post', {
        if (ownerId != null) 'owner_id': ownerId,
        if (friendsOnly != null) 'friends_only': friendsOnly,
        if (fromGroup != null) 'from_group': fromGroup,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
        if (services != null) 'services': services,
        if (signed != null) 'signed': signed,
        if (publishDate != null) 'publish_date': publishDate,
        if (lat != null) 'lat': lat,
        if (long != null) 'long': long,
        if (placeId != null) 'place_id': placeId,
        if (postId != null) 'post_id': postId,
        if (guid != null) 'guid': guid,
        if (markAsAds != null) 'mark_as_ads': markAsAds,
        if (closeComments != null) 'close_comments': closeComments,
        if (donutPaidDuration != null) 'donut_paid_duration': donutPaidDuration,
        if (muteNotifications != null) 'mute_notifications': muteNotifications,
        if (copyright != null) 'copyright': copyright,
        if (topicId != null) 'topic_id': topicId,
      });

  /// Allows to create hidden post which will not be shown on the community's wall and can be used for creating an ad with type "Community post".
  Future<Map<String, dynamic>> postAdsStealth({
    required int ownerId,
    String? message,
    List<String>? attachments,
    bool? signed,
    num? lat,
    num? long,
    int? placeId,
    String? guid,
    String? linkButton,
    String? linkTitle,
    String? linkImage,
    String? linkVideo,
  }) =>
      _api.request('wall.postAdsStealth', {
        'owner_id': ownerId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
        if (signed != null) 'signed': signed,
        if (lat != null) 'lat': lat,
        if (long != null) 'long': long,
        if (placeId != null) 'place_id': placeId,
        if (guid != null) 'guid': guid,
        if (linkButton != null) 'link_button': linkButton,
        if (linkTitle != null) 'link_title': linkTitle,
        if (linkImage != null) 'link_image': linkImage,
        if (linkVideo != null) 'link_video': linkVideo,
      });

  /// Reports (submits a complaint about) a comment on a post on a user wall or community wall.
  Future<Map<String, dynamic>> reportComment({
    required int ownerId,
    required int commentId,
    int? reason,
  }) =>
      _api.request('wall.reportComment', {
        'owner_id': ownerId,
        'comment_id': commentId,
        if (reason != null) 'reason': reason,
      });

  /// Reports (submits a complaint about) a post on a user wall or community wall.
  Future<Map<String, dynamic>> reportPost({
    required int ownerId,
    required int postId,
    int? reason,
  }) =>
      _api.request('wall.reportPost', {
        'owner_id': ownerId,
        'post_id': postId,
        if (reason != null) 'reason': reason,
      });

  /// Reposts (copies) an object to a user wall or community wall.
  Future<Map<String, dynamic>> repost({
    required String object,
    String? message,
    int? groupId,
    bool? markAsAds,
    bool? muteNotifications,
  }) =>
      _api.request('wall.repost', {
        'object': object,
        if (message != null) 'message': message,
        if (groupId != null) 'group_id': groupId,
        if (markAsAds != null) 'mark_as_ads': markAsAds,
        if (muteNotifications != null) 'mute_notifications': muteNotifications,
      });

  /// Restores a post deleted from a user wall or community wall.
  Future<Map<String, dynamic>> restore({
    int? ownerId,
    int? postId,
  }) =>
      _api.request('wall.restore', {
        if (ownerId != null) 'owner_id': ownerId,
        if (postId != null) 'post_id': postId,
      });

  /// Restores a comment deleted from a user wall or community wall.
  Future<Map<String, dynamic>> restoreComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('wall.restoreComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  /// Allows to search posts on user or community walls.
  Future<Map<String, dynamic>> search({
    int? ownerId,
    String? domain,
    String? query,
    bool? ownersOnly,
    int? count,
    int? offset,
    bool? extended,
    List<Object>? fields,
  }) =>
      _api.request('wall.search', {
        if (ownerId != null) 'owner_id': ownerId,
        if (domain != null) 'domain': domain,
        if (query != null) 'query': query,
        if (ownersOnly != null) 'owners_only': ownersOnly,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Unpins the post on wall.
  Future<Map<String, dynamic>> unpin({
    int? ownerId,
    required int postId,
  }) =>
      _api.request('wall.unpin', {
        if (ownerId != null) 'owner_id': ownerId,
        'post_id': postId,
      });
}
