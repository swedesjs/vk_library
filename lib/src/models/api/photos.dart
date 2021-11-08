part of vk_library;

/// A class for using the [`photos`](https://vk.com/dev/photos) methods.
class Photos {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Photos(API api) : _callMethod = api._callMethod("photos");

  /// Confirms the photo mark.
  Future<bool> confirmTag({
    int? ownerId,
    required int photoId,
    required int tagId,
  }) async {
    final data = await _callMethod("confirmTag", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      "tag_id": tagId,
    });

    return data.response == 1;
  }

  /// Allows you to copy a photo in the album `Saved photos`
  Future<int> copy({
    required int ownerId,
    required int photoId,
    String? accessKey,
  }) async {
    final data = await _callMethod("copy", {
      "owner_id": ownerId,
      "photo_id": photoId,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response;
  }

  /// Creates a blank album for photos.
  Future<Json> createAlbum({
    required String title,
    int? groupId,
    String? description,
    // TODO: Implement the enum - https://vk.com/dev/objects/privacy
    List<String>? privacyView,
    // TODO: Implement the enum - https://vk.com/dev/objects/privacy
    List<String>? privacyComment,
    bool? uploadByAdminsOnly,
    bool? commentsDisabled,
  }) async {
    final data = await _callMethod("createAlbum", {
      "title": title,
      if (groupId != null) "group_id": groupId,
      if (description != null) "description": description,
      if (privacyView != null) "privacy_view": privacyView.join(","),
      if (privacyComment != null) "privacy_comment": privacyComment.join(","),
      if (uploadByAdminsOnly != null)
        "upload_by_admins_only": uploadByAdminsOnly,
      if (commentsDisabled != null) "comments_disabled": commentsDisabled,
    });

    return data.response;
  }

  /// Creates a new comment to the photo.
  Future<int> createComment({
    int? ownerId,
    required int photoId,
    String? message,
    List<String>? attachments,
    bool? fromGroup,
    int? replyToComment,
    int? stickerId,
    String? accessKey,
    String? guid,
  }) async {
    final data = await _callMethod("createComment", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
      if (fromGroup != null) "from_group": fromGroup,
      if (replyToComment != null) "reply_to_comment": replyToComment,
      if (stickerId != null) "sticker_id": stickerId,
      if (accessKey != null) "access_key": accessKey,
      if (guid != null) "guid": guid,
    });

    return data.response;
  }

  /// Deleting a photo on the site.
  Future<bool> delete({
    int? ownerId,
    required int photoId,
  }) async {
    final data = await _callMethod("delete", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
    });

    return data.response == 1;
  }

  /// Removes the specified album for photos from the current user
  Future<bool> deleteAlbum({
    required int albumId,
    int? groupId,
  }) async {
    final data = await _callMethod("deleteAlbum", {
      "album_id": albumId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response == 1;
  }

  /// Deletes a comment to the photo.
  Future<bool> deleteComment({
    int? ownerId,
    required int commentId,
  }) async {
    final data = await _callMethod("deleteComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Edits a description or geometry in the photo.
  Future<bool> edit({
    int? ownerId,
    required int photoId,
    String? caption,
    num? latitude,
    num? longitude,
    String? placeStr,
    String? foursquareId,
    bool? deletePlace,
  }) async {
    final data = await _callMethod("edit", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      if (caption != null) "caption": caption,
      if (latitude != null) "latitude": latitude,
      if (longitude != null) "longitude": longitude,
      if (placeStr != null) "place_str": placeStr,
      if (foursquareId != null) "foursquare_id": foursquareId,
      if (deletePlace != null) "delete_place": deletePlace,
    });

    return data.response == 1;
  }

  /// Edits photo album data.
  Future<bool> editAlbum({
    required int albumId,
    String? title,
    String? description,
    int? ownerId,
    // TODO: Implement the enum - https://vk.com/dev/objects/privacy
    List<String>? privacyView,
    // TODO: Implement the enum - https://vk.com/dev/objects/privacy
    List<String>? privacyComment,
    bool? uploadByAdminsOnly,
    bool? commentsDisabled,
  }) async {
    final data = await _callMethod("editAlbum", {
      "album_id": albumId,
      if (title != null) "title": title,
      if (description != null) "description": description,
      if (ownerId != null) "owner_id": ownerId,
      if (privacyView != null) "privacy_view": privacyView.join(","),
      if (privacyComment != null) "privacy_comment": privacyComment.join(","),
      if (uploadByAdminsOnly != null)
        "upload_by_admins_only": uploadByAdminsOnly,
      if (commentsDisabled != null) "comments_disabled": commentsDisabled,
    });

    return data.response == 1;
  }

  /// Changes photo comment text.
  Future<bool> editComment({
    int? ownerId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) async {
    final data = await _callMethod("editComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
    });

    return data.response == 1;
  }

  /// Returns a list of photos in the album.
  Future<Json> get({
    int? ownerId,
    // TODO: Implement the enum - https://vk.com/dev/photos.get
    String? albumId,
    List<int>? photoIds,
    bool? rev,
    bool? extended,
    // TODO: Implement the enum - https://vk.com/dev/photos.get
    String? feedType,
    int? feed,
    bool? photoSizes,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("get", {
      if (ownerId != null) "owner_id": ownerId,
      if (albumId != null) "album_id": albumId,
      if (photoIds != null) "photo_ids": photoIds.join(","),
      if (rev != null) "rev": rev,
      if (extended != null) "extended": extended,
      if (feedType != null) "feed_type": feedType,
      if (feed != null) "feed": feed,
      if (photoSizes != null) "photo_sizes": photoSizes,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns a list of user albums or community.
  Future<Json> getAlbums({
    int? ownerId,
    List<int>? albumIds,
    int? offset,
    int? count,
    bool? needSystem,
    bool? needCovers,
    bool? photoSizes,
  }) async {
    final data = await _callMethod("getAlbums", {
      if (ownerId != null) "owner_id": ownerId,
      if (albumIds != null) "album_ids": albumIds.join(","),
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (needSystem != null) "need_system": needSystem,
      if (needCovers != null) "need_covers": needCovers,
      if (photoSizes != null) "photo_sizes": photoSizes,
    });

    return data.response;
  }

  /// Returns the number of available user albums or community.
  Future<int> getAlbumsCount({
    int? userId,
    int? groupId,
  }) async {
    final data = await _callMethod("getAlbumsCount", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Returns all the photos of the user or community in antichronological order.
  Future<Json> getAll({
    int? ownerId,
    bool? extended,
    int? offset,
    int? count,
    bool? photoSizes,
    bool? noServiceAlbums,
    bool? needHidden,
    bool? skipHidden,
  }) async {
    final data = await _callMethod("getAll", {
      if (ownerId != null) "owner_id": ownerId,
      if (extended != null) "extended": extended,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (photoSizes != null) "photo_sizes": photoSizes,
      if (noServiceAlbums != null) "no_service_albums": noServiceAlbums,
      if (needHidden != null) "need_hidden": needHidden,
      if (skipHidden != null) "skip_hidden": skipHidden,
    });

    return data.response;
  }

  /// Returns a list of all comments sorted in an antichronological order or to all user albums.
  Future<Json> getAllComments({
    int? ownerId,
    int? albumId,
    bool? needLikes,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("getAllComments", {
      if (ownerId != null) "owner_id": ownerId,
      if (albumId != null) "album_id": albumId,
      if (needLikes != null) "need_likes": needLikes,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns information about photographs by their identifiers.
  Future<List<Json>> getById({
    required List<String> photos,
    bool? extended,
    bool? photoSizes,
  }) async {
    final data = await _callMethod("getById", {
      "photos": photos.join(","),
      if (extended != null) "extended": extended,
      if (photoSizes != null) "photo_sizes": photoSizes,
    });

    return data.response;
  }

  /// Allows you to get an address to load chat cover.
  Future<Json> getChatUploadServer({
    required int chatId,
    int? cropX,
    int? cropY,
    int? cropWidth,
  }) async {
    final data = await _callMethod("getChatUploadServer", {
      "chat_id": chatId,
      if (cropX != null) "crop_x": cropX,
      if (cropY != null) "crop_y": cropY,
      if (cropWidth != null) "crop_width": cropWidth,
    });

    return data.response;
  }

  /// Returns a list of comments to the photo.
  Future<Json> getComments({
    int? ownerId,
    required int photoId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/photos.getComments
    String? sort,
    String? accessKey,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _callMethod("getComments", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      if (needLikes != null) "need_likes": needLikes,
      if (startCommentId != null) "start_comment_id": startCommentId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (sort != null) "sort": sort,
      if (accessKey != null) "access_key": accessKey,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns the server address to download photos of the selection of goods in the community.
  Future<Json> getMarketAlbumUploadServer({required int groupId}) async {
    final data = await _callMethod("getMarketAlbumUploadServer", {
      "group_id": groupId,
    });

    return data.response;
  }

  /// Returns the server address to download the product.
  Future<Json> getMarketUploadServer({int? groupId}) async {
    final data = await _callMethod("getMarketUploadServer", {
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Returns the server address to download the photo to a private message.
  Future<Json> getMessagesUploadServer({int? groupId}) async {
    final data = await _callMethod("getMessagesUploadServer", {
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Returns a list of photos on which there are unpelled marks.
  Future<Json> getNewTags({
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("getNewTags", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Gets an address to download the community cover.
  Future<Json> getOwnerCoverPhotoUploadServer({
    required int groupId,
    int? cropX,
    int? cropY,
    int? cropX2,
    int? cropY2,
  }) async {
    final data = await _callMethod("getOwnerCoverPhotoUploadServer", {
      "group_id": groupId,
      if (cropX != null) "crop_x": cropX,
      if (cropY != null) "crop_y": cropY,
      if (cropX2 != null) "crop_x2": cropX2,
      if (cropY2 != null) "crop_y2": cropY2,
    });

    return data.response;
  }

  /// Returns the server address to download the main photo to the user page or community.
  Future<Json> getOwnerPhotoUploadServer({int? ownerId}) async {
    final data = await _callMethod("getOwnerPhotoUploadServer", {
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response;
  }

  /// Returns a list of marks to the photo.
  Future<List<Json>> getTags({
    int? ownerId,
    required int photoId,
    String? accessKey,
  }) async {
    final data = await _callMethod("getTags", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      if (accessKey != null) "access_key": accessKey,
    });

    return data.response;
  }

  /// Returns the address of the server to download photos.
  Future<Json> getUploadServer({int? albumId, int? groupId}) async {
    final data = await _callMethod("getUploadServer", {
      if (albumId != null) "album_id": albumId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Returns list of photos on which the user is marked
  Future<Json> getUserPhotos({
    int? userId,
    int? offset,
    int? count,
    bool? extended,
    // TODO: Implement the enum - https://vk.com/dev/photos.getUserPhotos
    int? sort,
  }) async {
    final data = await _callMethod("getUserPhotos", {
      if (userId != null) "user_id": userId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (sort != null) "sort": sort,
    });

    return data.response;
  }

  /// Returns the address of the server to download the photo on the wall of the user or community.
  Future<Json> getWallUploadServer({int? groupId}) async {
    final data = await _callMethod("getWallUploadServer", {
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  /// Makes a photo of the album cover.
  Future<bool> makeCover({
    int? ownerId,
    required int photoId,
    int? albumId,
  }) async {
    final data = await _callMethod("makeCover", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      if (albumId != null) "album_id": albumId,
    });

    return data.response == 1;
  }

  /// Carries a photo from one album to another.
  Future<bool> move({
    int? ownerId,
    required int targetAlbumId,
    required int photoId,
  }) async {
    final data = await _callMethod("move", {
      if (ownerId != null) "owner_id": ownerId,
      "target_album_id": targetAlbumId,
      "photo_id": photoId,
    });

    return data.response == 1;
  }

  /// Adds a photo mark.
  Future<int> putTag({
    int? ownerId,
    required int photoId,
    required int userId,
    num? x,
    num? y,
    num? x2,
    num? y2,
  }) async {
    final data = await _callMethod("putTag", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      "user_id": userId,
      if (x != null) "x": x,
      if (y != null) "y": y,
      if (x2 != null) "x2": x2,
      if (y2 != null) "y2": y2,
    });

    return data.response;
  }

  /// Removes a mark from the photo.
  Future<bool> removeTag({
    int? ownerId,
    required int photoId,
    required int tagId,
  }) async {
    final data = await _callMethod("removeTag", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      "tag_id": tagId,
    });

    return data.response == 1;
  }

  /// Changes the order of the album in the list of user albums.
  Future<bool> reorderAlbums({
    int? ownerId,
    required int albumId,
    int? before,
    int? after,
  }) async {
    final data = await _callMethod("reorderAlbums", {
      if (ownerId != null) "owner_id": ownerId,
      "album_id": albumId,
      if (before != null) "before": before,
      if (after != null) "after": after,
    });

    return data.response == 1;
  }

  /// Changes the order of the photo in the list of photos of the user's album.
  Future<bool> reorderPhotos({
    int? ownerId,
    required int photoId,
    int? before,
    int? after,
  }) async {
    final data = await _callMethod("reorderPhotos", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
      if (before != null) "before": before,
      if (after != null) "after": after,
    });

    return data.response == 1;
  }

  /// Allows you to complain to the photo.
  Future<bool> report({
    required int ownerId,
    required int photoId,
    // TODO: Implement the enum - https://vk.com/dev/photos.report
    int? reason,
  }) async {
    final data = await _callMethod("report", {
      "owner_id": ownerId,
      "photo_id": photoId,
      if (reason != null) "reason": reason,
    });

    return data.response == 1;
  }

  /// Allows you to comment on the photo.
  Future<bool> reportComment({
    required int ownerId,
    required int commentId,
    // TODO: Implement the enum - https://vk.com/dev/photos.report
    int? reason,
  }) async {
    final data = await _callMethod("reportComment", {
      "owner_id": ownerId,
      "comment_id": commentId,
      if (reason != null) "reason": reason,
    });

    return data.response == 1;
  }

  /// Restores a remote photo.
  Future<bool> restore({
    int? ownerId,
    required int photoId,
  }) async {
    final data = await _callMethod("restore", {
      if (ownerId != null) "owner_id": ownerId,
      "photo_id": photoId,
    });

    return data.response == 1;
  }

  /// Restores a remote comment on the photo.
  Future<bool> restoreComment({
    int? ownerId,
    required int commentId,
  }) async {
    final data = await _callMethod("restoreComment", {
      if (ownerId != null) "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Saves photos after successful download.
  Future<List<Json>> save({
    int? albumId,
    int? groupId,
    int? server,
    String? photosList,
    String? hash,
    num? latitude,
    num? longitude,
    String? caption,
  }) async {
    final data = await _callMethod("save", {
      if (albumId != null) "album_id": albumId,
      if (groupId != null) "group_id": groupId,
      if (server != null) "server": server,
      if (photosList != null) "photos_list": photosList,
      if (hash != null) "hash": hash,
      if (latitude != null) "latitude": latitude,
      if (longitude != null) "longitude": longitude,
      if (caption != null) "caption": caption,
    });

    return data.response;
  }

  /// Saves photos after a successful download to the URI received by [getMarketAlbumUploadServer].
  Future<List<Json>> saveMarketAlbumPhoto({
    required int groupId,
    required String photo,
    required int server,
    required String hash,
  }) async {
    final data = await _callMethod("saveMarketAlbumPhoto", {
      "group_id": groupId,
      "photo": photo,
      "server": server,
      "hash": hash,
    });

    return data.response;
  }

  /// Saves photos after a successful download to the URI obtained by [getMarketUploadServer].
  Future<List<Json>> saveMarketPhoto({
    int? groupId,
    required String photo,
    required int server,
    required String hash,
    String? cropData,
    String? cropHash,
  }) async {
    final data = await _callMethod("saveMarketPhoto", {
      if (groupId != null) "group_id": groupId,
      "photo": photo,
      "server": server,
      "hash": hash,
      if (cropData != null) "crop_data": cropData,
      if (cropHash != null) "crop_hash": cropHash,
    });

    return data.response;
  }

  /// Saves a photo after a successful download on the URI received by [getMessagesUploadServer].
  Future<List<Json>> saveMessagesPhoto({
    required String photo,
    int? server,
    String? hash,
  }) async {
    final data = await _callMethod("saveMessagesPhoto", {
      "photo": photo,
      if (server != null) "server": server,
      if (hash != null) "hash": hash,
    });

    return data.response;
  }

  /// Saves a community cover after successful download.
  Future<List<Json>> saveOwnerCoverPhoto({
    required String hash,
    required String photo,
  }) async {
    final data = await _callMethod("saveOwnerCoverPhoto", {
      "hash": hash,
      "photo": photo,
    });

    return data.response;
  }

  /// Allows you to save the main photo of the user or community.
  Future<Json> saveOwnerPhoto({
    String? server,
    String? hash,
    String? photo,
  }) async {
    final data = await _callMethod("saveOwnerPhoto", {
      if (server != null) "server": server,
      if (hash != null) "hash": hash,
      if (photo != null) "photo": photo,
    });

    return data.response;
  }

  /// Saves photos after a successful download on the URI received by [getWallUploadServer].
  Future<List<Json>> saveWallPhoto({
    int? userId,
    int? groupId,
    required String photo,
    int? server,
    String? hash,
    num? latitude,
    num? longitude,
    String? caption,
  }) async {
    final data = await _callMethod("saveWallPhoto", {
      if (userId != null) "user_id": userId,
      if (groupId != null) "group_id": groupId,
      "photo": photo,
      if (server != null) "server": server,
      if (hash != null) "hash": hash,
      if (latitude != null) "latitude": latitude,
      if (longitude != null) "longitude": longitude,
      if (caption != null) "caption": caption,
    });

    return data.response;
  }

  /// Searches for images by location or description.
  Future<Json> search({
    String? q,
    num? lat,
    num? long,
    int? startTime,
    int? endTime,
    // TODO: Implement the enum - https://vk.com/dev/photos.search
    int? sort,
    int? offset,
    int? count,
    int? radius,
  }) async {
    final data = await _callMethod("search", {
      if (q != null) "q": q,
      if (lat != null) "lat": lat,
      if (long != null) "long": long,
      if (startTime != null) "start_time": startTime,
      if (endTime != null) "end_time": endTime,
      if (sort != null) "sort": sort,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (radius != null) "radius": radius,
    });

    return data.response;
  }
}
