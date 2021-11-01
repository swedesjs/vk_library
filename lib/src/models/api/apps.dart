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
    int? app_id,
    List<int>? app_ids,
    // TODO: Implement the enum - https://vk.com/dev/apps.get
    String? platform,
    bool? extended,
    bool? return_friends,
    Set<UserObjectFields>? fields,
    NameCase? name_case,
  }) async {
    final data = await _callMethod("get", {
      if (app_id != null) "app_id": app_id,
      if (app_ids != null) "app_ids": app_ids.join(","),
      if (platform != null) "platform": platform,
      if (extended != null) "extended": extended,
      if (return_friends != null) "return_friends": return_friends,
      if (fields != null) "fields": fields.join(","),
      if (name_case != null) "name_case": name_case.stringValue()
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
    bool? return_friends,
    Set<UserObjectFields>? fields,
    NameCase? name_case,
    String? q,
    int? genre_id,
    // TODO: Implement the enum - https://vk.com/dev/apps.getCatalog
    String? filter,
  }) async {
    final data = await _callMethod("getCatalog", {
      if (sort != null) "sort": sort,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (platform != null) "platform": platform,
      if (extended != null) "extended": extended,
      if (return_friends != null) "return_friends": return_friends,
      if (fields != null) "fields": fields.join(","),
      if (name_case != null) "name_case": name_case.stringValue(),
      if (q != null) "q": q,
      if (genre_id != null) "genre_id": genre_id,
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
    Set<UserObjectFields>? fields,
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

  Future<Json> getMiniAppPolicies({required int app_id}) async {
    final data = await _callMethod("getMiniAppPolicies", {"app_id": app_id});
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
  Future<int> getScore({int? user_id}) async {
    final data = await _callMethod("getScore", {
      if (user_id != null) "user_id": user_id,
    });

    return data.response;
  }

  /// Check if the user has a gift in the game.
  ///
  /// Using this method, you can check if the user has a gift in your game, received in one and the platform's promotions
  Future<bool> promoHasActiveGift({required int promo_id, int? user_id}) async {
    final data = await _callMethod("promoHasActiveGift", {
      "promo_id": promo_id,
      if (user_id != null) "user_id": user_id,
    });

    return data.response == 1;
  }

  /// Use the gift the user received in the promotion.
  ///
  /// This method must be called after issuing an in-game gift to the user, if a positive result was obtained when calling the [promoHasActiveGift] method. (i.e., in one of the mechanics, the user received a gift in your game)
  Future<bool> promoUseGift({required int promo_id, int? user_id}) async {
    final data = await _callMethod("promoUseGift", {
      "promo_id": promo_id,
      if (user_id != null) "user_id": user_id,
    });

    return data.response == 1;
  }

  /// Allows you to send a request to another user in an application using VKontakte authorization.
  ///
  /// The method requires the use of a confirmation window. Sending requests in applications not published in the Mobile Catalog is available only to application administrators.
  Future<int> sendRequest({
    required int user_id,
    String? text,
    // TODO: Implement the enum - https://vk.com/dev/apps.sendRequest
    String? type,
    String? name,
    String? key,
    bool? separate,
  }) async {
    final data = await _callMethod("sendRequest", {
      "user_id": user_id,
      if (text != null) "text": text,
      if (type != null) "type": type,
      if (name != null) "name": name,
      if (key != null) "key": key,
      if (separate != null) "separate": separate,
    });

    return data.response;
  }
}
