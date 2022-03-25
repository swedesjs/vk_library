import 'package:vk_library/src/api.dart';

class Store {
  final API _api;

  Store(this._api);

  Future<Map<String, dynamic>> addStickersToFavorite({
    required dynamic stickerIds,
  }) =>
      _api.request('store.addStickersToFavorite', {
        'sticker_ids': stickerIds,
      });

  Future<Map<String, dynamic>> getFavoriteStickers() =>
      _api.request('store.getFavoriteStickers');

  Future<Map<String, dynamic>> getProducts({
    String? type,
    String? merchant,
    String? section,
    dynamic productIds,
    dynamic filters,
    bool? extended,
  }) =>
      _api.request('store.getProducts', {
        if (type != null) 'type': type,
        if (merchant != null) 'merchant': merchant,
        if (section != null) 'section': section,
        if (productIds != null) 'product_ids': productIds,
        if (filters != null) 'filters': filters,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getStickersKeywords({
    dynamic stickersIds,
    dynamic productsIds,
    bool? aliases,
    bool? allProducts,
    bool? needStickers,
  }) =>
      _api.request('store.getStickersKeywords', {
        if (stickersIds != null) 'stickers_ids': stickersIds,
        if (productsIds != null) 'products_ids': productsIds,
        if (aliases != null) 'aliases': aliases,
        if (allProducts != null) 'all_products': allProducts,
        if (needStickers != null) 'need_stickers': needStickers,
      });

  Future<Map<String, dynamic>> removeStickersFromFavorite({
    required dynamic stickerIds,
  }) =>
      _api.request('store.removeStickersFromFavorite', {
        'sticker_ids': stickerIds,
      });
}
