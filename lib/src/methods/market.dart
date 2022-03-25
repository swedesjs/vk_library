import 'package:vk_library/src/api.dart';

class Market {
  final API _api;

  Market(this._api);

  Future<Map<String, dynamic>> add({
    required int ownerId,
    required String name,
    required String description,
    required int categoryId,
    num? price,
    num? oldPrice,
    bool? deleted,
    int? mainPhotoId,
    dynamic photoIds,
    String? url,
    int? dimensionWidth,
    int? dimensionHeight,
    int? dimensionLength,
    int? weight,
    String? sku,
  }) =>
      _api.request('market.add', {
        'owner_id': ownerId,
        'name': name,
        'description': description,
        'category_id': categoryId,
        if (price != null) 'price': price,
        if (oldPrice != null) 'old_price': oldPrice,
        if (deleted != null) 'deleted': deleted,
        if (mainPhotoId != null) 'main_photo_id': mainPhotoId,
        if (photoIds != null) 'photo_ids': photoIds,
        if (url != null) 'url': url,
        if (dimensionWidth != null) 'dimension_width': dimensionWidth,
        if (dimensionHeight != null) 'dimension_height': dimensionHeight,
        if (dimensionLength != null) 'dimension_length': dimensionLength,
        if (weight != null) 'weight': weight,
        if (sku != null) 'sku': sku,
      });

  Future<Map<String, dynamic>> addAlbum({
    required int ownerId,
    required String title,
    int? photoId,
    bool? mainAlbum,
    bool? isHidden,
  }) =>
      _api.request('market.addAlbum', {
        'owner_id': ownerId,
        'title': title,
        if (photoId != null) 'photo_id': photoId,
        if (mainAlbum != null) 'main_album': mainAlbum,
        if (isHidden != null) 'is_hidden': isHidden,
      });

  Future<Map<String, dynamic>> addToAlbum({
    required int ownerId,
    required dynamic itemIds,
    required dynamic albumIds,
  }) =>
      _api.request('market.addToAlbum', {
        'owner_id': ownerId,
        'item_ids': itemIds,
        'album_ids': albumIds,
      });

  Future<Map<String, dynamic>> createComment({
    required int ownerId,
    required int itemId,
    String? message,
    dynamic attachments,
    bool? fromGroup,
    int? replyToComment,
    int? stickerId,
    String? guid,
  }) =>
      _api.request('market.createComment', {
        'owner_id': ownerId,
        'item_id': itemId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments,
        if (fromGroup != null) 'from_group': fromGroup,
        if (replyToComment != null) 'reply_to_comment': replyToComment,
        if (stickerId != null) 'sticker_id': stickerId,
        if (guid != null) 'guid': guid,
      });

  Future<Map<String, dynamic>> delete({
    required int ownerId,
    required int itemId,
  }) =>
      _api.request('market.delete', {
        'owner_id': ownerId,
        'item_id': itemId,
      });

  Future<Map<String, dynamic>> deleteAlbum({
    required int ownerId,
    required int albumId,
  }) =>
      _api.request('market.deleteAlbum', {
        'owner_id': ownerId,
        'album_id': albumId,
      });

  Future<Map<String, dynamic>> deleteComment({
    required int ownerId,
    required int commentId,
  }) =>
      _api.request('market.deleteComment', {
        'owner_id': ownerId,
        'comment_id': commentId,
      });

  Future<Map<String, dynamic>> edit({
    required int ownerId,
    required int itemId,
    String? name,
    String? description,
    int? categoryId,
    num? price,
    num? oldPrice,
    bool? deleted,
    int? mainPhotoId,
    dynamic photoIds,
    String? url,
    int? dimensionWidth,
    int? dimensionHeight,
    int? dimensionLength,
    int? weight,
    String? sku,
  }) =>
      _api.request('market.edit', {
        'owner_id': ownerId,
        'item_id': itemId,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (categoryId != null) 'category_id': categoryId,
        if (price != null) 'price': price,
        if (oldPrice != null) 'old_price': oldPrice,
        if (deleted != null) 'deleted': deleted,
        if (mainPhotoId != null) 'main_photo_id': mainPhotoId,
        if (photoIds != null) 'photo_ids': photoIds,
        if (url != null) 'url': url,
        if (dimensionWidth != null) 'dimension_width': dimensionWidth,
        if (dimensionHeight != null) 'dimension_height': dimensionHeight,
        if (dimensionLength != null) 'dimension_length': dimensionLength,
        if (weight != null) 'weight': weight,
        if (sku != null) 'sku': sku,
      });

  Future<Map<String, dynamic>> editAlbum({
    required int ownerId,
    required int albumId,
    required String title,
    int? photoId,
    bool? mainAlbum,
    bool? isHidden,
  }) =>
      _api.request('market.editAlbum', {
        'owner_id': ownerId,
        'album_id': albumId,
        'title': title,
        if (photoId != null) 'photo_id': photoId,
        if (mainAlbum != null) 'main_album': mainAlbum,
        if (isHidden != null) 'is_hidden': isHidden,
      });

  Future<Map<String, dynamic>> editComment({
    required int ownerId,
    required int commentId,
    String? message,
    dynamic attachments,
  }) =>
      _api.request('market.editComment', {
        'owner_id': ownerId,
        'comment_id': commentId,
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments,
      });

  Future<Map<String, dynamic>> editOrder({
    required int userId,
    required int orderId,
    String? merchantComment,
    int? status,
    String? trackNumber,
    String? paymentStatus,
    int? deliveryPrice,
    int? width,
    int? length,
    int? height,
    int? weight,
  }) =>
      _api.request('market.editOrder', {
        'user_id': userId,
        'order_id': orderId,
        if (merchantComment != null) 'merchant_comment': merchantComment,
        if (status != null) 'status': status,
        if (trackNumber != null) 'track_number': trackNumber,
        if (paymentStatus != null) 'payment_status': paymentStatus,
        if (deliveryPrice != null) 'delivery_price': deliveryPrice,
        if (width != null) 'width': width,
        if (length != null) 'length': length,
        if (height != null) 'height': height,
        if (weight != null) 'weight': weight,
      });

  Future<Map<String, dynamic>> get({
    required int ownerId,
    int? albumId,
    int? count,
    int? offset,
    bool? extended,
    String? dateFrom,
    String? dateTo,
    bool? needVariants,
    bool? withDisabled,
  }) =>
      _api.request('market.get', {
        'owner_id': ownerId,
        if (albumId != null) 'album_id': albumId,
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (extended != null) 'extended': extended,
        if (dateFrom != null) 'date_from': dateFrom,
        if (dateTo != null) 'date_to': dateTo,
        if (needVariants != null) 'need_variants': needVariants,
        if (withDisabled != null) 'with_disabled': withDisabled,
      });

  Future<Map<String, dynamic>> getAlbumById({
    required int ownerId,
    required dynamic albumIds,
  }) =>
      _api.request('market.getAlbumById', {
        'owner_id': ownerId,
        'album_ids': albumIds,
      });

  Future<Map<String, dynamic>> getAlbums({
    required int ownerId,
    int? offset,
    int? count,
  }) =>
      _api.request('market.getAlbums', {
        'owner_id': ownerId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getById({
    required dynamic itemIds,
    bool? extended,
  }) =>
      _api.request('market.getById', {
        'item_ids': itemIds,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getCategories({
    int? count,
    int? offset,
  }) =>
      _api.request('market.getCategories', {
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
      });

  Future<Map<String, dynamic>> getComments({
    required int ownerId,
    required int itemId,
    bool? needLikes,
    int? startCommentId,
    int? offset,
    int? count,
    String? sort,
    bool? extended,
    dynamic fields,
  }) =>
      _api.request('market.getComments', {
        'owner_id': ownerId,
        'item_id': itemId,
        if (needLikes != null) 'need_likes': needLikes,
        if (startCommentId != null) 'start_comment_id': startCommentId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (sort != null) 'sort': sort,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields,
      });

  Future<Map<String, dynamic>> getGroupOrders({
    required int groupId,
    int? offset,
    int? count,
  }) =>
      _api.request('market.getGroupOrders', {
        'group_id': groupId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getOrderById({
    int? userId,
    required int orderId,
    bool? extended,
  }) =>
      _api.request('market.getOrderById', {
        if (userId != null) 'user_id': userId,
        'order_id': orderId,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getOrderItems({
    int? userId,
    required int orderId,
    int? offset,
    int? count,
  }) =>
      _api.request('market.getOrderItems', {
        if (userId != null) 'user_id': userId,
        'order_id': orderId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getOrders({
    int? offset,
    int? count,
    bool? extended,
    String? dateFrom,
    String? dateTo,
  }) =>
      _api.request('market.getOrders', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (dateFrom != null) 'date_from': dateFrom,
        if (dateTo != null) 'date_to': dateTo,
      });

  Future<Map<String, dynamic>> removeFromAlbum({
    required int ownerId,
    required int itemId,
    required dynamic albumIds,
  }) =>
      _api.request('market.removeFromAlbum', {
        'owner_id': ownerId,
        'item_id': itemId,
        'album_ids': albumIds,
      });

  Future<Map<String, dynamic>> reorderAlbums({
    required int ownerId,
    required int albumId,
    int? before,
    int? after,
  }) =>
      _api.request('market.reorderAlbums', {
        'owner_id': ownerId,
        'album_id': albumId,
        if (before != null) 'before': before,
        if (after != null) 'after': after,
      });

  Future<Map<String, dynamic>> reorderItems({
    required int ownerId,
    int? albumId,
    required int itemId,
    int? before,
    int? after,
  }) =>
      _api.request('market.reorderItems', {
        'owner_id': ownerId,
        if (albumId != null) 'album_id': albumId,
        'item_id': itemId,
        if (before != null) 'before': before,
        if (after != null) 'after': after,
      });

  Future<Map<String, dynamic>> report({
    required int ownerId,
    required int itemId,
    int? reason,
  }) =>
      _api.request('market.report', {
        'owner_id': ownerId,
        'item_id': itemId,
        if (reason != null) 'reason': reason,
      });

  Future<Map<String, dynamic>> reportComment({
    required int ownerId,
    required int commentId,
    required int reason,
  }) =>
      _api.request('market.reportComment', {
        'owner_id': ownerId,
        'comment_id': commentId,
        'reason': reason,
      });

  Future<Map<String, dynamic>> restore({
    required int ownerId,
    required int itemId,
  }) =>
      _api.request('market.restore', {
        'owner_id': ownerId,
        'item_id': itemId,
      });

  Future<Map<String, dynamic>> restoreComment({
    required int ownerId,
    required int commentId,
  }) =>
      _api.request('market.restoreComment', {
        'owner_id': ownerId,
        'comment_id': commentId,
      });

  Future<Map<String, dynamic>> search({
    required int ownerId,
    int? albumId,
    String? q,
    int? priceFrom,
    int? priceTo,
    int? sort,
    int? rev,
    int? offset,
    int? count,
    bool? extended,
    dynamic status,
    bool? needVariants,
  }) =>
      _api.request('market.search', {
        'owner_id': ownerId,
        if (albumId != null) 'album_id': albumId,
        if (q != null) 'q': q,
        if (priceFrom != null) 'price_from': priceFrom,
        if (priceTo != null) 'price_to': priceTo,
        if (sort != null) 'sort': sort,
        if (rev != null) 'rev': rev,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (status != null) 'status': status,
        if (needVariants != null) 'need_variants': needVariants,
      });

  Future<Map<String, dynamic>> searchItems({
    required String q,
    int? offset,
    int? count,
    int? categoryId,
    int? priceFrom,
    int? priceTo,
    int? sortBy,
    int? sortDirection,
    int? country,
    int? city,
  }) =>
      _api.request('market.searchItems', {
        'q': q,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (categoryId != null) 'category_id': categoryId,
        if (priceFrom != null) 'price_from': priceFrom,
        if (priceTo != null) 'price_to': priceTo,
        if (sortBy != null) 'sort_by': sortBy,
        if (sortDirection != null) 'sort_direction': sortDirection,
        if (country != null) 'country': country,
        if (city != null) 'city': city,
      });
}
