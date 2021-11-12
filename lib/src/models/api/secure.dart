part of vk_library;

/// A class for using the [`secure`](https://vk.com/dev/secure) methods.
class Secure {
  final API _api;
  
  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Secure(this._api);

  /// Adds information about user achievements in the application.
  Future<T> addAppEvent<T extends Object>({
    required int userId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/secure.addAppEvent
    required int activityId,
    int? value,
  }) async {
    final data = await _api.call("secure.addAppEvent", {
      "user_id": userId,
      "activity_id": activityId,
      if (value != null) "value": value,
    });

    return data.response;
  }

  /// Allows you to check the validity of the user access key in `Iframe`, `VK Mini Apps` and `Standalone` applications using the `access_token` parameter applications.
  Future<Json> checkToken({
    String? token,
    String? ip,
  }) async {
    final data = await _api.call("secure.checkToken", {
      if (token != null) "token": token,
      if (ip != null) "ip": ip,
    });

    return data.response;
  }

  /// Returns the payment balance (account) of the application in hundredths of votes.
  Future<double> getAppBalance() async {
    final data = await _api.call("secure.getAppBalance", const {});

    return data.response;
  }

  /// Displays a list of SMS notifications sent by the application using the [sendSMSNotification] method.
  Future<List<Json>> getSMSHistory({
    int? userId,
    int? dateFrom,
    int? dateTo,
    int? limit,
  }) async {
    final data = await _api.call("secure.getSMSHistory", {
      if (userId != null) "user_id": userId,
      if (dateFrom != null) "date_from": dateFrom,
      if (dateTo != null) "date_to": dateTo,
      if (limit != null) "limit": limit,
    });

    return data.response;
  }

  /// Displays the history of transactions to transfer votes between users and the application.
  Future<List<Json>> getTransactionsHistory() async {
    final data = await _api.call("secure.getTransactionsHistory", const {});

    return data.response;
  }

  /// Returns the previously exposed game level of one or more users in the application.
  Future<T> getUserLevel<T extends Object>({required List<int> userIds}) async {
    final data = await _api.call("secure.getUserLevel", {
      "user_ids": userIds.join(","),
    });

    return data.response;
  }

  /// Gives the user a sticker and opens the game achievement.
  Future<Json> giveEventSticker({
    required List<int> userIds,
    required int achievementId,
  }) async {
    final data = await _api.call("secure.giveEventSticker", {
      "user_ids": userIds.join(","),
      "achievement_id": achievementId,
    });

    return data.response;
  }

  /// Sends a notification to the user.
  Future<String> sendNotification({
    List<int>? userIds,
    int? userId,
    required String message,
  }) async {
    final data = await _api.call("secure.sendNotification", {
      if (userIds != null) "user_ids": userIds.join(","),
      if (userId != null) "user_id": userId,
      "message": message,
    });

    return data.response;
  }

  /// Sends `SMS` notifications to a mobile phone user.
  Future<bool> sendSMSNotification({
    required int userId,
    required String message,
  }) async {
    final data = await _api.call("secure.sendSMSNotification", {
      "user_id": userId,
      "message": message,
    });

    return data.response == 1;
  }

  /// Sets the counter, which is displayed by the user in bold in the left menu.
  Future<List<Json>> setCounter({
    List<String>? counters,
    int? userId,
    int? counter,
    bool? increment,
  }) async {
    final data = await _api.call("secure.setCounter", {
      if (counters != null) "counters": counters.join(","),
      if (userId != null) "user_id": userId,
      if (counter != null) "counter": counter,
      if (increment != null) "increment": increment,
    });

    return data.response;
  }
}
