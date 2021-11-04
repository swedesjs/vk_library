part of vk_library;

/// A class for using the [`apps`](https://vk.com/dev/apps) methods.
class Apps {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Apps(API api) : _callMethod = api._callMethod("apps");

  /// Clears all notifications for requests sent from the current application.
  Future<bool> deleteAppRequests() async {
    final data = await _callMethod("deleteAppRequests", const {});

    return data.response == 1;
  }

  /// Returns data about the requested application.
  Future<Json> get({
    int? appId,
    List<int>? appIds,
    // TODO: Implement the enum - https://vk.com/dev/apps.get
    String? platform,
    bool? extended,
    bool? returnFriends,
    Set<String>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _callMethod("get", {
      if (appId != null) "app_id": appId,
      if (appIds != null) "app_ids": appIds.join(","),
      if (platform != null) "platform": platform,
      if (extended != null) "extended": extended,
      if (returnFriends != null) "return_friends": returnFriends,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.stringValue()
    });

    return data.response;
  }

  /// Returns a list of applications available to site users through the application catalog.
  Future<Json> getCatalog({
    // TODO: Implement the enum - https://vk.com/dev/apps.getCatalog
    String? sort,
    int? offset,
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/apps.getCatalog
    String? platform,
    bool? extended,
    bool? returnFriends,
    Set<String>? fields,
    NameCase? nameCase,
    String? q,
    int? genreId,
    // TODO: Implement the enum - https://vk.com/dev/apps.getCatalog
    String? filter,
  }) async {
    final data = await _callMethod("getCatalog", {
      if (sort != null) "sort": sort,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (platform != null) "platform": platform,
      if (extended != null) "extended": extended,
      if (returnFriends != null) "return_friends": returnFriends,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.stringValue(),
      if (q != null) "q": q,
      if (genreId != null) "genre_id": genreId,
      if (filter != null) "filter": filter,
    });

    return data.response;
  }

  /// Creates a list of friends that will be used when the user sends app invitations and game requests.
  Future<Json> getFriendsList({
    bool? extended,
    int? count,
    int? offset,
    // TODO: Implement the enum - https://vk.com/dev/apps.getFriendsList
    String? type,
    Set<String>? fields,
  }) async {
    final data = await _callMethod("getFriendsList", {
      if (extended != null) "extended": extended,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (type != null) "type": type,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns the rating of users in the game.
  Future<List<Json>> getLeaderboard({
    // TODO: Implement the enum - https://vk.com/dev/apps.getLeaderboard
    required String type,
    bool? global,
    bool? extended,
  }) async {
    final data = await _callMethod("getLeaderboard", {
      "type": type,
      if (global != null) "global": global,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  Future<Json> getMiniAppPolicies({required int appId}) async {
    final data = await _callMethod("getMiniAppPolicies", {"app_id": appId});
    return data.response;
  }

  Future<Json> getScopes({
    // TODO: Implement the enum - https://vk.com/dev/apps.getScopes
    String? type,
  }) async {
    final data = await _callMethod("getScopes", {
      if (type != null) "type": type,
    });

    return data.response;
  }

  /// The method returns the number of points the user has in this game.
  Future<int> getScore({int? userId}) async {
    final data = await _callMethod("getScore", {
      if (userId != null) "user_id": userId,
    });

    return data.response;
  }

  /// Check if the user has a gift in the game.
  ///
  /// Using this method, you can check if the user has a gift in your game, received in one and the platform's promotions
  Future<bool> promoHasActiveGift({required int promoId, int? userId}) async {
    final data = await _callMethod("promoHasActiveGift", {
      "promo_id": promoId,
      if (userId != null) "user_id": userId,
    });

    return data.response == 1;
  }

  /// Use the gift the user received in the promotion.
  ///
  /// This method must be called after issuing an in-game gift to the user, if a positive result was obtained when calling the [promoHasActiveGift] method. (i.e., in one of the mechanics, the user received a gift in your game)
  Future<bool> promoUseGift({required int promoId, int? userId}) async {
    final data = await _callMethod("promoUseGift", {
      "promo_id": promoId,
      if (userId != null) "user_id": userId,
    });

    return data.response == 1;
  }

  /// Allows you to send a request to another user in an application using VKontakte authorization.
  ///
  /// The method requires the use of a confirmation window. Sending requests in applications not published in the Mobile Catalog is available only to application administrators.
  Future<int> sendRequest({
    required int userId,
    String? text,
    // TODO: Implement the enum - https://vk.com/dev/apps.sendRequest
    String? type,
    String? name,
    String? key,
    bool? separate,
  }) async {
    final data = await _callMethod("sendRequest", {
      "user_id": userId,
      if (text != null) "text": text,
      if (type != null) "type": type,
      if (name != null) "name": name,
      if (key != null) "key": key,
      if (separate != null) "separate": separate,
    });

    return data.response;
  }
}
