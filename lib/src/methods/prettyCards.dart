import 'package:vk_library/src/api.dart';

class PrettyCards {
  final API _api;

  PrettyCards(this._api);

  Future<Map<String, dynamic>> create({
    required int ownerId,
    required String photo,
    required String title,
    required String link,
    String? price,
    String? priceOld,
    String? button,
  }) =>
      _api.request('prettyCards.create', {
        'owner_id': ownerId,
        'photo': photo,
        'title': title,
        'link': link,
        if (price != null) 'price': price,
        if (priceOld != null) 'price_old': priceOld,
        if (button != null) 'button': button,
      });

  Future<Map<String, dynamic>> delete({
    required int ownerId,
    required int cardId,
  }) =>
      _api.request('prettyCards.delete', {
        'owner_id': ownerId,
        'card_id': cardId,
      });

  Future<Map<String, dynamic>> edit({
    required int ownerId,
    required int cardId,
    String? photo,
    String? title,
    String? link,
    String? price,
    String? priceOld,
    String? button,
  }) =>
      _api.request('prettyCards.edit', {
        'owner_id': ownerId,
        'card_id': cardId,
        if (photo != null) 'photo': photo,
        if (title != null) 'title': title,
        if (link != null) 'link': link,
        if (price != null) 'price': price,
        if (priceOld != null) 'price_old': priceOld,
        if (button != null) 'button': button,
      });

  Future<Map<String, dynamic>> get({
    required int ownerId,
    int? offset,
    int? count,
  }) =>
      _api.request('prettyCards.get', {
        'owner_id': ownerId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getById({
    required int ownerId,
    required List<int> cardIds,
  }) =>
      _api.request('prettyCards.getById', {
        'owner_id': ownerId,
        'card_ids': cardIds.join(','),
      });

  Future<Map<String, dynamic>> getUploadURL() =>
      _api.request('prettyCards.getUploadURL');
}
