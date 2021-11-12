part of vk_library;

/// A class for using the [`market`](https://vk.com/dev/market) methods.
class Market {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Market(this._api);

  /// Adds a new product.
  Future<int> add({
    required int ownerId,
    required String name,
    required String description,
    required int categoryId,
    num? price,
    num? oldPrice,
    bool? deleted,
    int? mainPhotoId,
    List<int>? photoIds,
    String? url,
    int? dimensionWidth,
    int? dimensionHeight,
    int? dimensionLength,
    int? weight,
    String? sku,
  }) async {
    final data = await _api.call("market.add", {
      "owner_id": ownerId,
      "name": name,
      "description": description,
      "category_id": categoryId,
      if (price != null) "price": price,
      if (oldPrice != null) "old_price": oldPrice,
      if (deleted != null) "deleted": deleted,
      if (mainPhotoId != null) "main_photo_id": mainPhotoId,
      if (photoIds != null) "photo_ids": photoIds.join(","),
      if (url != null) "url": url,
      if (dimensionWidth != null) "dimension_width": dimensionWidth,
      if (dimensionHeight != null) "dimension_height": dimensionHeight,
      if (dimensionLength != null) "dimension_length": dimensionLength,
      if (weight != null) "weight": weight,
      if (sku != null) "sku": sku,
    });

    return data.response;
  }

  /// Adds a new collection with products.
  Future<Json> addAlbum({
    required int ownerId,
    required String title,
    int? photoId,
    bool? mainAlbum,
    bool? isHidden,
  }) async {
    final data = await _api.call("market.addAlbum", {
      "owner_id": ownerId,
      "title": title,
      if (photoId != null) "photo_id": photoId,
      if (mainAlbum != null) "main_album": mainAlbum,
      if (isHidden != null) "is_hidden": isHidden,
    });

    return data.response;
  }

  /// Adds a product to one or more selected collections
  Future<bool> addToAlbum({
    required int ownerId,
    int? itemId,
    List<int>? itemIds,
    required List<int> albumIds,
  }) async {
    final data = await _api.call("market.addToAlbum", {
      "owner_id": ownerId,
      if (itemId != null) "item_id": itemId,
      if (itemIds != null) "item_ids": itemIds.join(","),
      "album_ids": albumIds.join(","),
    });

    return data.response == 1;
  }

  /// Creates a new comment for a product.
  Future<int> createComment({
    required int ownerId,
    required int itemId,
    String? message,
    List<String>? attachments,
    bool? fromGroup,
    int? replyToComment,
    int? stickerId,
    String? guid,
  }) async {
    final data = await _api.call("market.createComment", {
      "owner_id": ownerId,
      "item_id": itemId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments,
      if (fromGroup != null) "from_group": fromGroup,
      if (replyToComment != null) "reply_to_comment": replyToComment,
      if (stickerId != null) "sticker_id": stickerId,
      if (guid != null) "guid": guid,
    });

    return data.response;
  }

  /// Removes the item.
  Future<bool> delete({required int ownerId, required int itemId}) async {
    final data = await _api.call("market.delete", {
      "owner_id": ownerId,
      "item_id": itemId,
    });

    return data.response == 1;
  }

  /// Deletes a selection with products.
  Future<bool> deleteAlbum({required int ownerId, required int albumId}) async {
    final data = await _api.call("market.deleteAlbum", {
      "owner_id": ownerId,
      "album_id": albumId,
    });

    return data.response == 1;
  }

  /// Deletes a comment for a product.
  Future<bool> deleteComment({
    required int ownerId,
    required int commentId,
  }) async {
    final data = await _api.call("market.deleteComment", {
      "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Edits a product.
  Future<bool> edit({
    required int ownerId,
    required int itemId,
    String? name,
    String? description,
    int? categoryId,
    num? price,
    num? oldPrice,
    bool? deleted,
    int? mainPhotoId,
    List<int>? photoIds,
    String? url,
    int? dimensionWidth,
    int? dimensionHeight,
    int? dimensionLength,
    int? weight,
    String? sku,
  }) async {
    final data = await _api.call("market.edit", {
      "owner_id": ownerId,
      "item_id": itemId,
      if (name != null) "name": name,
      if (description != null) "description": description,
      if (categoryId != null) "category_id": categoryId,
      if (price != null) "price": price,
      if (oldPrice != null) "old_price": oldPrice,
      if (deleted != null) "deleted": deleted,
      if (mainPhotoId != null) "main_photo_id": mainPhotoId,
      if (photoIds != null) "photo_ids": photoIds.join(","),
      if (url != null) "url": url,
      if (dimensionWidth != null) "dimension_width": dimensionWidth,
      if (dimensionHeight != null) "dimension_height": dimensionHeight,
      if (dimensionLength != null) "dimension_length": dimensionLength,
      if (weight != null) "weight": weight,
      if (sku != null) "sku": sku,
    });

    return data.response == 1;
  }

  /// Edits a selection with products.
  Future<bool> editAlbum({
    required int ownerId,
    required int albumId,
    String? title,
    int? photoId,
    bool? mainAlbum,
    bool? isHidden,
  }) async {
    final data = await _api.call("market.editAlbum", {
      "owner_id": ownerId,
      "album_id": albumId,
      if (title != null) "title": title,
      if (photoId != null) "photo_id": photoId,
      if (mainAlbum != null) "main_album": mainAlbum,
      if (isHidden != null) "is_hidden": isHidden,
    });

    return data.response == 1;
  }

  /// Changes the text of the comment to the product.
  Future<bool> editComment({
    required int ownerId,
    required int commentId,
    String? message,
    List<String>? attachments,
  }) async {
    final data = await _api.call("market.editComment", {
      "owner_id": ownerId,
      "comment_id": commentId,
      if (message != null) "message": message,
      if (attachments != null) "attachments": attachments.join(","),
    });

    return data.response == 1;
  }

  /// Edits the order.
  Future<bool> editOrder({
    required int userId,
    required int orderId,
    String? merchantComment,
    // TODO: Implement the enum - https://vk.com/dev/market.editOrder
    int? status,
    String? trackNumber,
    // TODO: Implement the enum - https://vk.com/dev/market.editOrder
    String? paymentStatus,
    int? deliveryPrice,
    int? width,
    int? length,
    int? height,
    int? weight,
    String? commentForUser,
    String? receiptLink,
  }) async {
    final data = await _api.call("market.editOrder", {
      "user_id": userId,
      "order_id": orderId,
      if (merchantComment != null) "merchant_comment": merchantComment,
      if (status != null) "status": status,
      if (trackNumber != null) "track_number": trackNumber,
      if (paymentStatus != null) "payment_status": paymentStatus,
      if (deliveryPrice != null) "delivery_price": deliveryPrice,
      if (width != null) "width": width,
      if (length != null) "length": length,
      if (height != null) "height": height,
      if (weight != null) "weight": weight,
      if (commentForUser != null) "comment_for_user": commentForUser,
      if (receiptLink != null) "receipt_link": receiptLink,
    });

    return data.response == 1;
  }

  /// Returns a list of products in the community.
  Future<Json> get({
    required int ownerId,
    int? albumId,
    int? count,
    int? offset,
    bool? extended,
    String? dateFrom,
    String? dateTo,
    bool? needVariants,
    bool? withDisabled,
  }) async {
    final data = await _api.call("market.get", {
      "owner_id": ownerId,
      if (albumId != null) "album_id": albumId,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (extended != null) "extended": extended,
      if (dateFrom != null) "date_from": dateFrom,
      if (dateTo != null) "date_to": dateTo,
      if (needVariants != null) "need_variants": needVariants,
      if (withDisabled != null) "with_disabled": withDisabled,
    });

    return data.response;
  }

  /// Returns collection data with products.
  Future<Json> getAlbumById({
    required int ownerId,
    required List<int> albumIds,
    bool? needAllItemIds,
  }) async {
    final data = await _api.call("market.getAlbumById", {
      "owner_id": ownerId,
      "album_ids": albumIds.join(","),
      if (needAllItemIds != null) "need_all_item_ids": needAllItemIds,
    });

    return data.response;
  }

  /// Returns a list of collections with products.
  Future<Json> getAlbums({
    required int ownerId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("market.getAlbums", {
      "owner_id": ownerId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns information about products by identifier.
  Future<Json> getById({
    required List<String> itemIds,
    bool? extended,
  }) async {
    final data = await _api.call("market.getById", {
      "item_ids": itemIds.join(","),
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns a list of categories for products.
  Future<Json> getCategories({int? count, int? offset}) async {
    final data = await _api.call("market.getCategories", {
      "count": count,
      "offset": offset,
    });

    return data.response;
  }

  /// Returns a list of product comments.
  Future<Json> getComments({
    required int ownerId,
    required int itemId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/market.getComments
    String? sort,
    bool? extended,
    Set<String>? fields,
  }) async {
    final data = await _api.call("market.getComments", {
      "owner_id": ownerId,
      "item_id": itemId,
      if (needLikes != null) "need_likes": needLikes,
      if (startCommentId != null) "start_comment_id": startCommentId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (sort != null) "sort": sort,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns community orders.
  Future<Json> getGroupOrders({
    required int groupId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("market.getGroupOrders", {
      "group_id": groupId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns an order by identifier.
  Future<Json> getOrderById({
    int? userId,
    required int orderId,
    bool? extended,
  }) async {
    final data = await _api.call("market.getOrderById", {
      if (userId != null) "user_id": userId,
      "order_id": orderId,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns the items in the order.
  Future<Json> getOrderItems({
    int? userId,
    required int orderId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("market.getOrderItems", {
      if (userId != null) "user_id": userId,
      "order_id": orderId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns orders.
  Future<Json> getOrders({
    int? offset,
    int? count,
    bool? extended,
    String? dateFrom,
    String? dateTo,
  }) async {
    final data = await _api.call("market.getOrders", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (dateFrom != null) "date_from": dateFrom,
      if (dateTo != null) "date_to": dateTo,
    });

    return data.response;
  }

  /// Removes an item from one or more selected collections.
  Future<bool> removeFromAlbum({
    required int ownerId,
    required int itemId,
    required List<int> albumIds,
  }) async {
    final data = await _api.call("market.removeFromAlbum", {
      "owner_id": ownerId,
      "item_id": itemId,
      "album_ids": albumIds.join(","),
    });

    return data.response == 1;
  }

  /// Changes the position of a selection with products in the list.
  Future<bool> reorderAlbums({
    required int ownerId,
    required int albumId,
    int? before,
    int? after,
  }) async {
    final data = await _api.call("market.reorderAlbums", {
      "owner_id": ownerId,
      "album_id": albumId,
      if (before != null) "before": before,
      if (after != null) "after": after,
    });

    return data.response == 1;
  }

  /// Changes the position of the product in the collection.
  Future<bool> reorderItems({
    required int ownerId,
    int? albumId,
    required int itemId,
    int? before,
    int? after,
  }) async {
    final data = await _api.call("market.reorderItems", {
      "owner_id": ownerId,
      if (albumId != null) "album_id": albumId,
      "item_id": itemId,
      if (before != null) "before": before,
      if (after != null) "after": after,
    });

    return data.response == 1;
  }

  /// Allows you to send a complaint about the product.
  Future<bool> report({
    required int ownerId,
    required int itemId,
    // TODO: Implement the enum - https://vk.com/dev/market.report
    required int reason,
  }) async {
    final data = await _api.call("market.report", {
      "owner_id": ownerId,
      "item_id": itemId,
      "reason": reason,
    });

    return data.response == 1;
  }

  /// Allows you to leave a complaint about a comment on the product.
  Future<bool> reportComment({
    required int ownerId,
    required int commentId,
    // TODO: Implement the enum - https://vk.com/dev/market.report
    required int reason,
  }) async {
    final data = await _api.call("market.reportComment", {
      "owner_id": ownerId,
      "comment_id": commentId,
      "reason": reason,
    });

    return data.response == 1;
  }

  /// Recovers deleted item.
  Future<bool> restore({
    required int ownerId,
    required int itemId,
  }) async {
    final data = await _api.call("market.restore", {
      "owner_id": ownerId,
      "item_id": itemId,
    });

    return data.response == 1;
  }

  /// Recovers a deleted product comment.
  Future<bool> restoreComment({
    required int ownerId,
    required int commentId,
  }) async {
    final data = await _api.call("market.restoreComment", {
      "owner_id": ownerId,
      "comment_id": commentId,
    });

    return data.response == 1;
  }

  /// Searches for products in the community directory.
  Future<Json> search({
    required int ownerId,
    int? albumId,
    String? q,
    int? priceFrom,
    int? priceTo,
    // TODO: Implement the enum - https://vk.com/dev/market.search
    int? sort,
    int? rev,
    int? offset,
    int? count,
    bool? extended,
    // TODO: Implement the enum - https://vk.com/dev/market.search
    List<int>? status,
    bool? needVariants,
  }) async {
    final data = await _api.call("market.search", {
      "owner_id": ownerId,
      if (albumId != null) "album_id": albumId,
      if (q != null) "q": q,
      if (priceFrom != null) "price_from": priceFrom,
      if (priceTo != null) "price_to": priceTo,
      if (sort != null) "sort": sort,
      if (rev != null) "rev": rev,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (status != null) "status": status.join(","),
      if (needVariants != null) "need_variants": needVariants,
    });

    return data.response;
  }
}
