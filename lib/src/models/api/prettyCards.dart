part of vk_library;

/// A class for using the [`prettyCards`](https://vk.com/dev/prettyCards) methods.
class PrettyCards {
  final API _api;
  
  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const PrettyCards(this._api);

  /// Creates a carousel card.
  Future<Json> create({
    required int ownerId,
    required String photo,
    required String title,
    required String link,
    String? price,
    String? priceOld,
    // TODO: Implement the enum - https://vk.com/dev/prettyCards.create
    String? button,
  }) async {
    final data = await _api.call("prettyCards.create", {
      "owner_id": ownerId,
      "photo": photo,
      "title": title,
      "link": link,
      if (price != null) "price": price,
      if (priceOld != null) "price_old": priceOld,
      if (button != null) "button": button,
    });

    return data.response;
  }

  /// Removes a card.
  Future<Json> delete({required int ownerId, required String cardId}) async {
    final data = await _api.call("prettyCards.delete", {
      "owner_id": ownerId,
      "card_id": cardId,
    });

    return data.response;
  }

  /// Edits Carousel Card.
  Future<Json> edit({
    required int ownerId,
    required String cardId,
    String? photo,
    String? title,
    String? link,
    String? price,
    String? priceOld,
    String? button,
  }) async {
    final data = await _api.call("prettyCards.edit", {
      "owner_id": ownerId,
      "card_id": cardId,
      if (photo != null) "photo": photo,
      if (title != null) "title": title,
      if (link != null) "link": link,
      if (price != null) "price": price,
      if (priceOld != null) "price_old": priceOld,
      if (button != null) "button": button,
    });

    return data.response;
  }

  /// Returns unused owner cards.
  Future<List<Json>> get({
    required int ownerId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("prettyCards.get", {
      "owner_id": ownerId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns card information.
  Future<List<Json>> getById({
    required int ownerId,
    required List<int> cardIds,
  }) async {
    final data = await _api.call("prettyCards.getById", {
      "owner_id": ownerId,
      "card_ids": cardIds.join(","),
    });

    return data.response;
  }

  /// Returns the URL to download the photo for the card.
  Future<Json> getUploadURL() async {
    final data = await _api.call("prettyCards.getUploadURL", const {});

    return data.response;
  }
}
