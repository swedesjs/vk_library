part of vk_library;

/// A class for using the [`store`](https://vk.com/dev/store) methods.
class Store {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Store(this._api);

  /// Adds a sticker to favorites.
  Future<Json> addStickersToFavorite({required List<int> stickerIds}) async {
    final data = await _api.call("store.addStickersToFavorite", {
      "sticker_ids": stickerIds.join(","),
    });

    return data.response;
  }

  /// Returns a list of favorite stickers.
  Future<Json> getFavoriteStickers() async {
    final data = await _api.call("store.getFavoriteStickers", const {});
    return data.response;
  }

  /// Returns a list of products.
  Future<Json> getProducts({
    // TODO: Implement the enum
    String? type,
    // TODO: Implement the enum.
    String? merchant,
    String? section,
    List<int>? productIds,
    // TODO: Implement the enum
    Set<String>? filters,
    bool? extended,
  }) async {
    final data = await _api.call("store.getProducts", {
      if (type != null) "type": type,
      if (merchant != null) "merchant": merchant,
      if (section != null) "section": section,
      if (productIds != null) "product_ids": productIds.join(","),
      if (filters != null) "filters": filters.join(","),
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns a list of keywords for stickers.
  Future<Json> getStickersKeywords({
    List<int>? stickersIds,
    List<int>? productIds,
    bool? aliases,
    bool? allProducts,
    bool? needStickers,
  }) async {
    final data = await _api.call("store.getStickersKeywords", {
      if (stickersIds != null) "stickers_ids": stickersIds.join(","),
      if (productIds != null) "product_ids": productIds.join(","),
      if (aliases != null) "aliases": aliases,
      if (allProducts != null) "all_products": allProducts,
      if (needStickers != null) "need_stickers": needStickers,
    });

    return data.response;
  }

  /// Removes a sticker from favorites.
  Future<bool> removeStickersFromFavorite({
    required List<int> stickerIds,
  }) async {
    final data = await _api.call("store.removeStickersFromFavorite", {
      "stickers_ids": stickerIds.join(","),
    });

    return data.response == 1;
  }
}
