import 'package:vk_library/src/api.dart';

class Store {
  final API _api;

  Store(this._api);

  /// Adds given sticker IDs to the list of user's favorite stickers
  Future<Map<String, dynamic>> addStickersToFavorite({
    required List<int> stickerIds,
  }) =>
      _api.request('store.addStickersToFavorite', {
        'sticker_ids': stickerIds.join(','),
      });

  Future<Map<String, dynamic>> getFavoriteStickers() =>
      _api.request('store.getFavoriteStickers');

  Future<Map<String, dynamic>> getProducts({
    String? type,
    String? merchant,
    String? section,
    List<int>? productIds,
    List<String>? filters,
    bool? extended,
  }) =>
      _api.request('store.getProducts', {
        if (type != null) 'type': type,
        if (merchant != null) 'merchant': merchant,
        if (section != null) 'section': section,
        if (productIds != null) 'product_ids': productIds.join(','),
        if (filters != null) 'filters': filters.join(','),
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getStickersKeywords({
    List<int>? stickersIds,
    List<int>? productsIds,
    bool? aliases,
    bool? allProducts,
    bool? needStickers,
  }) =>
      _api.request('store.getStickersKeywords', {
        if (stickersIds != null) 'stickers_ids': stickersIds.join(','),
        if (productsIds != null) 'products_ids': productsIds.join(','),
        if (aliases != null) 'aliases': aliases,
        if (allProducts != null) 'all_products': allProducts,
        if (needStickers != null) 'need_stickers': needStickers,
      });

  /// Removes given sticker IDs from the list of user's favorite stickers
  Future<Map<String, dynamic>> removeStickersFromFavorite({
    required List<int> stickerIds,
  }) =>
      _api.request('store.removeStickersFromFavorite', {
        'sticker_ids': stickerIds.join(','),
      });
}
