import 'package:vk_library/responses.dart' as res;
import 'package:vk_library/src/api.dart';

class Photos {
  final API _api;

  Photos(this._api);

  /// Confirms a tag on a photo.
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

  /// Allows to copy a photo to the "Saved photos" album
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

  /// Creates an empty photo album.
  Future<Map<String, dynamic>> createAlbum({
    required String title,
    int? groupId,
    String? description,
    List<String>? privacyView,
    List<String>? privacyComment,
    bool? uploadByAdminsOnly,
    bool? commentsDisabled,
  }) =>
      _api.request('photos.createAlbum', {
        'title': title,
        if (groupId != null) 'group_id': groupId,
        if (description != null) 'description': description,
        if (privacyView != null) 'privacy_view': privacyView.join(','),
        if (privacyComment != null) 'privacy_comment': privacyComment.join(','),
        if (uploadByAdminsOnly != null)
          'upload_by_admins_only': uploadByAdminsOnly,
        if (commentsDisabled != null) 'comments_disabled': commentsDisabled,
      });

  /// Adds a new comment on the photo.
  Future<Map<String, dynamic>> createComment({
    int? ownerId,
    required int photoId,
    String? message,
    List<String>? attachments,
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
        if (attachments != null) 'attachments': attachments.join(','),
        if (fromGroup != null) 'from_group': fromGroup,
        if (replyToComment != null) 'reply_to_comment': replyToComment,
        if (stickerId != null) 'sticker_id': stickerId,
        if (accessKey != null) 'access_key': accessKey,
        if (guid != null) 'guid': guid,
      });

  /// Deletes a photo.
  Future<Map<String, dynamic>> delete({
    int? ownerId,
    required int photoId,
  }) =>
      _api.request('photos.delete', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
      });

  /// Deletes a photo album belonging to the current user.
  Future<Map<String, dynamic>> deleteAlbum({
    required int albumId,
    int? groupId,
  }) =>
      _api.request('photos.deleteAlbum', {
        'album_id': albumId,
        if (groupId != null) 'group_id': groupId,
      });

  /// Deletes a comment on the photo.
  Future<Map<String, dynamic>> deleteComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('photos.deleteComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  /// Edits the caption of a photo.
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

  /// Edits information about a photo album.
  Future<Map<String, dynamic>> editAlbum({
    required int albumId,
    String? title,
    String? description,
    int? ownerId,
    List<String>? privacyView,
    List<String>? privacyComment,
    bool? uploadByAdminsOnly,
    bool? commentsDisabled,
  }) =>
      _api.request('photos.editAlbum', {
        'album_id': albumId,
        if (title != null) 'title': title,
        if (description != null) 'description': description,
        if (ownerId != null) 'owner_id': ownerId,
        if (privacyView != null) 'privacy_view': privacyView.join(','),
        if (privacyComment != null) 'privacy_comment': privacyComment.join(','),
        if (uploadByAdminsOnly != null)
          'upload_by_admins_only': uploadByAdminsOnly,
        if (commentsDisabled != null) 'comments_disabled': commentsDisabled,
      });

  /// Edits a comment on a photo.
  Future<Map<String, dynamic>> editComment({
    int? ownerId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) =>
      _api.request('photos.editComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments.join(','),
      });

  /// Returns a list of a user's or community's photos.
  Future<Map<String, dynamic>> get({
    int? ownerId,
    String? albumId,
    List<String>? photoIds,
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
        if (photoIds != null) 'photo_ids': photoIds.join(','),
        if (rev != null) 'rev': rev,
        if (extended != null) 'extended': extended,
        if (feedType != null) 'feed_type': feedType,
        if (feed != null) 'feed': feed,
        if (photoSizes != null) 'photo_sizes': photoSizes,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns a list of a user's or community's photo albums.
  Future<Map<String, dynamic>> getAlbums({
    int? ownerId,
    List<int>? albumIds,
    int? offset,
    int? count,
    bool? needSystem,
    bool? needCovers,
    bool? photoSizes,
  }) =>
      _api.request('photos.getAlbums', {
        if (ownerId != null) 'owner_id': ownerId,
        if (albumIds != null) 'album_ids': albumIds.join(','),
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (needSystem != null) 'need_system': needSystem,
        if (needCovers != null) 'need_covers': needCovers,
        if (photoSizes != null) 'photo_sizes': photoSizes,
      });

  /// Returns the number of photo albums belonging to a user or community.
  Future<Map<String, dynamic>> getAlbumsCount({
    int? userId,
    int? groupId,
  }) =>
      _api.request('photos.getAlbumsCount', {
        if (userId != null) 'user_id': userId,
        if (groupId != null) 'group_id': groupId,
      });

  /// Returns a list of photos belonging to a user or community, in reverse chronological order.
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

  /// Returns a list of comments on a specific photo album or all albums of the user sorted in reverse chronological order.
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

  /// Returns information about photos by their IDs.
  Future<Map<String, dynamic>> getById({
    required List<String> photos,
    bool? extended,
    bool? photoSizes,
  }) =>
      _api.request('photos.getById', {
        'photos': photos.join(','),
        if (extended != null) 'extended': extended,
        if (photoSizes != null) 'photo_sizes': photoSizes,
      });

  /// Returns an upload link for chat cover pictures.
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

  /// Returns a list of comments on a photo.
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
    List<Object>? fields,
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
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns the server address for market album photo upload.
  Future<Map<String, dynamic>> getMarketAlbumUploadServer({
    required int groupId,
  }) =>
      _api.request('photos.getMarketAlbumUploadServer', {
        'group_id': groupId,
      });

  /// Returns the server address for market photo upload.
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

  /// Returns the server address for photo upload in a private message for a user.
  Future<res.PhotosGetMessagesUploadServer> getMessagesUploadServer({
    int? peerId,
  }) async {
    final response = await _api.request('photos.getMessagesUploadServer', {
      if (peerId != null) 'peer_id': peerId,
    });

    return res.PhotosGetMessagesUploadServer.fromJson(response['response']);
  }

  /// Returns a list of photos with tags that have not been viewed.
  Future<Map<String, dynamic>> getNewTags({
    int? offset,
    int? count,
  }) =>
      _api.request('photos.getNewTags', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns the server address for owner cover upload.
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

  /// Returns an upload server address for a profile or community photo.
  Future<Map<String, dynamic>> getOwnerPhotoUploadServer({
    int? ownerId,
  }) =>
      _api.request('photos.getOwnerPhotoUploadServer', {
        if (ownerId != null) 'owner_id': ownerId,
      });

  /// Returns a list of tags on a photo.
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

  /// Returns the server address for photo upload.
  Future<res.PhotosGetUploadServer> getUploadServer({
    int? albumId,
    int? groupId,
  }) async {
    final response = await _api.request('photos.getUploadServer', {
      if (albumId != null) 'album_id': albumId,
      if (groupId != null) 'group_id': groupId,
    });

    return res.PhotosGetUploadServer.fromJson(response['response']);
  }

  /// Returns a list of photos in which a user is tagged.
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

  /// Returns the server address for photo upload onto a user's wall.
  Future<Map<String, dynamic>> getWallUploadServer({
    int? groupId,
  }) =>
      _api.request('photos.getWallUploadServer', {
        if (groupId != null) 'group_id': groupId,
      });

  /// Makes a photo into an album cover.
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

  /// Moves a photo from one album to another.
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

  /// Adds a tag on the photo.
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

  /// Removes a tag from a photo.
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

  /// Reorders the album in the list of user albums.
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

  /// Reorders the photo in the list of photos of the user album.
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

  /// Reports (submits a complaint about) a photo.
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

  /// Reports (submits a complaint about) a comment on a photo.
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

  /// Restores a deleted photo.
  Future<Map<String, dynamic>> restore({
    int? ownerId,
    required int photoId,
  }) =>
      _api.request('photos.restore', {
        if (ownerId != null) 'owner_id': ownerId,
        'photo_id': photoId,
      });

  /// Restores a deleted comment on a photo.
  Future<Map<String, dynamic>> restoreComment({
    int? ownerId,
    required int commentId,
  }) =>
      _api.request('photos.restoreComment', {
        if (ownerId != null) 'owner_id': ownerId,
        'comment_id': commentId,
      });

  /// Saves photos after successful uploading.
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

  /// Saves market album photos after successful uploading.
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

  /// Saves market photos after successful uploading.
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

  /// Saves a photo after being successfully uploaded. URL obtained with [Photos.getMessagesUploadServer] method.
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

  /// Saves cover photo after successful uploading.
  Future<Map<String, dynamic>> saveOwnerCoverPhoto({
    required String hash,
    required String photo,
  }) =>
      _api.request('photos.saveOwnerCoverPhoto', {
        'hash': hash,
        'photo': photo,
      });

  /// Saves a profile or community photo. Upload URL can be got with the [Photos.getOwnerPhotoUploadServer] method.
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

  /// Saves a photo to a user's or community's wall after being uploaded.
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

  /// Returns a list of photos.
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
