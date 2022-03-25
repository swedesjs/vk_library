import 'package:vk_library/src/api.dart';

class Photos {
  final API _api;

  Photos(this._api);

  Future<Map<String, dynamic>> confirmTag({
    int? ownerId,
    required String photoId,
    required int tagId,
  }) =>
      _api.request('photos.confirmTag', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        'tag_id': tagId,
      });

  Future<Map<String, dynamic>> copy({
    required int ownerId,
    required int photoId,
    String? accessKey,
  }) =>
      _api.request('photos.copy', {
        'owner_id': ownerId,
        'photo_id': photoId,
        if (accessKey != null) 'access_key': accessKey,
      });

  Future<Map<String, dynamic>> createAlbum({
    required String title,
    int? groupId,
    String? description,
    dynamic privacyView,
    dynamic privacyComment,
    bool? uploadByAdminsOnly,
    bool? commentsDisabled,
  }) =>
      _api.request('photos.createAlbum', {
        'title': title,
        if (groupId != null) 'group_id': groupId,
        if (description != null) 'description': description,
        if (privacyView != null) 'privacy_view': privacyView,
        if (privacyComment != null) 'privacy_comment': privacyComment,
        if (uploadByAdminsOnly != null)
          'upload_by_admins_only': uploadByAdminsOnly,
        if (commentsDisabled != null) 'comments_disabled': commentsDisabled,
      });

  Future<Map<String, dynamic>> createComment({
    int? ownerId,
    required int photoId,
    String? message,
    dynamic attachments,
    bool? fromGroup,
    int? replyToComment,
    int? stickerId,
    String? accessKey,
    String? guid,
  }) =>
      _api.request('photos.createComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments,
        if (fromGroup != null) 'from_group': fromGroup,
        if (replyToComment != null) 'reply_to_comment': replyToComment,
        if (stickerId != null) 'sticker_id': stickerId,
        if (accessKey != null) 'access_key': accessKey,
        if (guid != null) 'guid': guid,
      });

  Future<Map<String, dynamic>> delete({
    int? ownerId,
    required int photoId,
  }) =>
      _api.request('photos.delete', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
      });

  Future<Map<String, dynamic>> deleteAlbum({
    required int albumId,
    int? groupId,
  }) =>
      _api.request('photos.deleteAlbum', {
        'album_id': albumId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> deleteComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('photos.deleteComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  Future<Map<String, dynamic>> edit({
    int? ownerId,
    required int photoId,
    String? caption,
    num? latitude,
    num? longitude,
    String? placeStr,
    String? foursquareId,
    bool? deletePlace,
  }) =>
      _api.request('photos.edit', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        if (caption != null) 'caption': caption,
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (placeStr != null) 'place_str': placeStr,
        if (foursquareId != null) 'foursquare_id': foursquareId,
        if (deletePlace != null) 'delete_place': deletePlace,
      });

  Future<Map<String, dynamic>> editAlbum({
    required int albumId,
    String? title,
    String? description,
    int? ownerId,
    dynamic privacyView,
    dynamic privacyComment,
    bool? uploadByAdminsOnly,
    bool? commentsDisabled,
  }) =>
      _api.request('photos.editAlbum', {
        'album_id': albumId,
        if (title != null) 'title': title,
        if (description != null) 'description': description,
        if (ownerId != null) 'owner_id': ownerId,
        if (privacyView != null) 'privacy_view': privacyView,
        if (privacyComment != null) 'privacy_comment': privacyComment,
        if (uploadByAdminsOnly != null)
          'upload_by_admins_only': uploadByAdminsOnly,
        if (commentsDisabled != null) 'comments_disabled': commentsDisabled,
      });

  Future<Map<String, dynamic>> editComment({
    int? ownerId,
    required int commentId,
    String? message,
    dynamic attachments,
  }) =>
      _api.request('photos.editComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments,
      });

  Future<Map<String, dynamic>> get({
    int? ownerId,
    String? albumId,
    dynamic photoIds,
    bool? rev,
    bool? extended,
    String? feedType,
    int? feed,
    bool? photoSizes,
    int? offset,
    int? count,
  }) =>
      _api.request('photos.get', {
        if (ownerId != null) 'owner_id': ownerId,
        if (albumId != null) 'album_id': albumId,
        if (photoIds != null) 'photo_ids': photoIds,
        if (rev != null) 'rev': rev,
        if (extended != null) 'extended': extended,
        if (feedType != null) 'feed_type': feedType,
        if (feed != null) 'feed': feed,
        if (photoSizes != null) 'photo_sizes': photoSizes,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getAlbums({
    int? ownerId,
    dynamic albumIds,
    int? offset,
    int? count,
    bool? needSystem,
    bool? needCovers,
    bool? photoSizes,
  }) =>
      _api.request('photos.getAlbums', {
        if (ownerId != null) 'owner_id': ownerId,
        if (albumIds != null) 'album_ids': albumIds,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (needSystem != null) 'need_system': needSystem,
        if (needCovers != null) 'need_covers': needCovers,
        if (photoSizes != null) 'photo_sizes': photoSizes,
      });

  Future<Map<String, dynamic>> getAlbumsCount({
    int? userId,
    int? groupId,
  }) =>
      _api.request('photos.getAlbumsCount', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getAll({
    int? ownerId,
    bool? extended,
    int? offset,
    int? count,
    bool? photoSizes,
    bool? noServiceAlbums,
    bool? needHidden,
    bool? skipHidden,
  }) =>
      _api.request('photos.getAll', {
        if (ownerId != null) 'owner_id': ownerId,
        if (extended != null) 'extended': extended,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (photoSizes != null) 'photo_sizes': photoSizes,
        if (noServiceAlbums != null) 'no_service_albums': noServiceAlbums,
        if (needHidden != null) 'need_hidden': needHidden,
        if (skipHidden != null) 'skip_hidden': skipHidden,
      });

  Future<Map<String, dynamic>> getAllComments({
    int? ownerId,
    int? albumId,
    bool? needLikes,
    int? offset,
    int? count,
  }) =>
      _api.request('photos.getAllComments', {
        if (ownerId != null) 'owner_id': ownerId,
        if (albumId != null) 'album_id': albumId,
        if (needLikes != null) 'need_likes': needLikes,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getById({
    required dynamic photos,
    bool? extended,
    bool? photoSizes,
  }) =>
      _api.request('photos.getById', {
        'photos': photos,
        if (extended != null) 'extended': extended,
        if (photoSizes != null) 'photo_sizes': photoSizes,
      });

  Future<Map<String, dynamic>> getChatUploadServer({
    required int chatId,
    int? cropX,
    int? cropY,
    int? cropWidth,
  }) =>
      _api.request('photos.getChatUploadServer', {
        'chat_id': chatId,
        if (cropX != null) 'crop_x': cropX,
        if (cropY != null) 'crop_y': cropY,
        if (cropWidth != null) 'crop_width': cropWidth,
      });

  Future<Map<String, dynamic>> getComments({
    int? ownerId,
    required int photoId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    String? sort,
    String? accessKey,
    bool? extended,
    dynamic fields,
  }) =>
      _api.request('photos.getComments', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        if (needLikes != null) 'need_likes': needLikes,
        if (startCommentId != null) 'start_comment_id': startCommentId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (sort != null) 'sort': sort,
        if (accessKey != null) 'access_key': accessKey,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields,
      });

  Future<Map<String, dynamic>> getMarketAlbumUploadServer({
    required int groupId,
  }) =>
      _api.request('photos.getMarketAlbumUploadServer', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> getMarketUploadServer({
    required int groupId,
    bool? mainPhoto,
    int? cropX,
    int? cropY,
    int? cropWidth,
  }) =>
      _api.request('photos.getMarketUploadServer', {
        'group_id': groupId,
        if (mainPhoto != null) 'main_photo': mainPhoto,
        if (cropX != null) 'crop_x': cropX,
        if (cropY != null) 'crop_y': cropY,
        if (cropWidth != null) 'crop_width': cropWidth,
      });

  Future<Map<String, dynamic>> getMessagesUploadServer({
    int? peerId,
  }) =>
      _api.request('photos.getMessagesUploadServer', {
        if (peerId != null) 'peer_id': peerId,
      });

  Future<Map<String, dynamic>> getNewTags({
    int? offset,
    int? count,
  }) =>
      _api.request('photos.getNewTags', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getOwnerCoverPhotoUploadServer({
    required int groupId,
    int? cropX,
    int? cropY,
    int? cropX2,
    int? cropY2,
  }) =>
      _api.request('photos.getOwnerCoverPhotoUploadServer', {
        'group_id': groupId,
        if (cropX != null) 'crop_x': cropX,
        if (cropY != null) 'crop_y': cropY,
        if (cropX2 != null) 'crop_x2': cropX2,
        if (cropY2 != null) 'crop_y2': cropY2,
      });

  Future<Map<String, dynamic>> getOwnerPhotoUploadServer({
    int? ownerId,
  }) =>
      _api.request('photos.getOwnerPhotoUploadServer', {
        if (ownerId != null) 'owner_id': ownerId,
      });

  Future<Map<String, dynamic>> getTags({
    int? ownerId,
    required int photoId,
    String? accessKey,
  }) =>
      _api.request('photos.getTags', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        if (accessKey != null) 'access_key': accessKey,
      });

  Future<Map<String, dynamic>> getUploadServer({
    int? albumId,
    int? groupId,
  }) =>
      _api.request('photos.getUploadServer', {
        if (albumId != null) 'album_id': albumId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getUserPhotos({
    int? userId,
    int? offset,
    int? count,
    bool? extended,
    String? sort,
  }) =>
      _api.request('photos.getUserPhotos', {
        if (userId != null) 'user_id': userId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (sort != null) 'sort': sort,
      });

  Future<Map<String, dynamic>> getWallUploadServer({
    int? groupId,
  }) =>
      _api.request('photos.getWallUploadServer', {
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> makeCover({
    int? ownerId,
    required int photoId,
    int? albumId,
  }) =>
      _api.request('photos.makeCover', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        if (albumId != null) 'album_id': albumId,
      });

  Future<Map<String, dynamic>> move({
    int? ownerId,
    required int targetAlbumId,
    required int photoIds,
  }) =>
      _api.request('photos.move', {
        if (ownerId != null) 'owner_id': ownerId,
        'target_album_id': targetAlbumId,
        'photo_ids': photoIds,
      });

  Future<Map<String, dynamic>> putTag({
    int? ownerId,
    required int photoId,
    required int userId,
    num? x,
    num? y,
    num? x2,
    num? y2,
  }) =>
      _api.request('photos.putTag', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        'user_id': userId,
        if (x != null) 'x': x,
        if (y != null) 'y': y,
        if (x2 != null) 'x2': x2,
        if (y2 != null) 'y2': y2,
      });

  Future<Map<String, dynamic>> removeTag({
    int? ownerId,
    required int photoId,
    required int tagId,
  }) =>
      _api.request('photos.removeTag', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        'tag_id': tagId,
      });

  Future<Map<String, dynamic>> reorderAlbums({
    int? ownerId,
    required int albumId,
    int? before,
    int? after,
  }) =>
      _api.request('photos.reorderAlbums', {
        if (ownerId != null) 'owner_id': ownerId,
        'album_id': albumId,
        if (before != null) 'before': before,
        if (after != null) 'after': after,
      });

  Future<Map<String, dynamic>> reorderPhotos({
    int? ownerId,
    required int photoId,
    int? before,
    int? after,
  }) =>
      _api.request('photos.reorderPhotos', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
        if (before != null) 'before': before,
        if (after != null) 'after': after,
      });

  Future<Map<String, dynamic>> report({
    required int ownerId,
    required int photoId,
    int? reason,
  }) =>
      _api.request('photos.report', {
        'owner_id': ownerId,
        'photo_id': photoId,
        if (reason != null) 'reason': reason,
      });

  Future<Map<String, dynamic>> reportComment({
    required int ownerId,
    required int commentId,
    int? reason,
  }) =>
      _api.request('photos.reportComment', {
        'owner_id': ownerId,
        'comment_id': commentId,
        if (reason != null) 'reason': reason,
      });

  Future<Map<String, dynamic>> restore({
    int? ownerId,
    required int photoId,
  }) =>
      _api.request('photos.restore', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
      });

  Future<Map<String, dynamic>> restoreComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('photos.restoreComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  Future<Map<String, dynamic>> save({
    int? albumId,
    int? groupId,
    int? server,
    String? photosList,
    String? hash,
    num? latitude,
    num? longitude,
    String? caption,
  }) =>
      _api.request('photos.save', {
        if (albumId != null) 'album_id': albumId,
        if (groupId != null) 'group_id': groupId,
        if (server != null) 'server': server,
        if (photosList != null) 'photos_list': photosList,
        if (hash != null) 'hash': hash,
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (caption != null) 'caption': caption,
      });

  Future<Map<String, dynamic>> saveMarketAlbumPhoto({
    required int groupId,
    required String photo,
    required int server,
    required String hash,
  }) =>
      _api.request('photos.saveMarketAlbumPhoto', {
        'group_id': groupId,
        'photo': photo,
        'server': server,
        'hash': hash,
      });

  Future<Map<String, dynamic>> saveMarketPhoto({
    int? groupId,
    required String photo,
    required int server,
    required String hash,
    String? cropData,
    String? cropHash,
  }) =>
      _api.request('photos.saveMarketPhoto', {
        if (groupId != null) 'group_id': groupId,
        'photo': photo,
        'server': server,
        'hash': hash,
        if (cropData != null) 'crop_data': cropData,
        if (cropHash != null) 'crop_hash': cropHash,
      });

  Future<Map<String, dynamic>> saveMessagesPhoto({
    required String photo,
    int? server,
    String? hash,
  }) =>
      _api.request('photos.saveMessagesPhoto', {
        'photo': photo,
        if (server != null) 'server': server,
        if (hash != null) 'hash': hash,
      });

  Future<Map<String, dynamic>> saveOwnerCoverPhoto({
    required String hash,
    required String photo,
  }) =>
      _api.request('photos.saveOwnerCoverPhoto', {
        'hash': hash,
        'photo': photo,
      });

  Future<Map<String, dynamic>> saveOwnerPhoto({
    String? server,
    String? hash,
    String? photo,
  }) =>
      _api.request('photos.saveOwnerPhoto', {
        if (server != null) 'server': server,
        if (hash != null) 'hash': hash,
        if (photo != null) 'photo': photo,
      });

  Future<Map<String, dynamic>> saveWallPhoto({
    int? userId,
    int? groupId,
    required String photo,
    int? server,
    String? hash,
    num? latitude,
    num? longitude,
    String? caption,
  }) =>
      _api.request('photos.saveWallPhoto', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
        'photo': photo,
        if (server != null) 'server': server,
        if (hash != null) 'hash': hash,
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (caption != null) 'caption': caption,
      });

  Future<Map<String, dynamic>> search({
    String? q,
    num? lat,
    num? long,
    int? startTime,
    int? endTime,
    int? sort,
    int? offset,
    int? count,
    int? radius,
  }) =>
      _api.request('photos.search', {
        if (q != null) 'q': q,
        if (lat != null) 'lat': lat,
        if (long != null) 'long': long,
        if (startTime != null) 'start_time': startTime,
        if (endTime != null) 'end_time': endTime,
        if (sort != null) 'sort': sort,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (radius != null) 'radius': radius,
      });
}
