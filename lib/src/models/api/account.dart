part of vk_library;

/// A class for using the [`account`](https://vk.com/dev/account) methods.
class Account {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Account(API api) : _callMethod = api._callMethod("account");

  /// Adds a user or group to the blacklist.
  Future<bool> ban({int? ownerId}) async {
    final data = await _callMethod("ban", {
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response == 1;
  }

  /// Allows you to change the user's password after successfully restoring access to the account via SMS using the [`auth.restore`](https://vk.com/dev/auth.restore) method.
  Future<Json> changePassword({
    String? restoreSid,
    String? changePasswordHash,
    String? oldPassword,
    required String newPassword,
  }) async {
    final data = await _callMethod("changePassword", {
      if (restoreSid != null) "restore_sid": restoreSid,
      if (changePasswordHash != null)
        "change_password_hash": changePasswordHash,
      if (oldPassword != null) "old_password": oldPassword,
      "new_password": newPassword,
    });

    return data.response;
  }

  /// Returns a list of active advertising offers (offers), after completing which the user will be able to receive the corresponding number of votes to his account within the application.
  Future<List<Json>> getActiveOffers({int? offset, int? count}) async {
    final data = await _callMethod("getActiveOffers", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Gets the settings of the current user in this application.
  Future<int> getAppPermissions({required int userId}) async {
    final data = await _callMethod("getAppPermissions", {"user_id": userId});

    return data.response;
  }

  /// Returns a list of blacklisted users.
  Future<Json> getBanned({int? offset, int? count}) async {
    final data = await _callMethod("getBanned", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns non-zero values ​​for user counters.
  Future<Json> getCounters({
    Set<AccountGetCountersFilter>? filter,
    int? userId,
  }) async {
    final data = await _callMethod("getCounters", {
      if (filter != null)
        "filter": filter.map((e) => e.stringValue()).join(","),
      if (userId != null) "user_id": userId,
    });

    return data.response;
  }

  /// Returns information about the current account.
  Future<Json> getInfo({List<AccountGetInfoFields>? fields}) async {
    final data = await _callMethod("getInfo", {
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns information about the current profile.
  Future<Json> getProfileInfo() async {
    final data = await _callMethod("getProfileInfo", const {});

    return data.response;
  }

  /// Allows you to receive push-notifications.
  Future<Json> getPushSettings({String? deviceId, String? token}) async {
    final data = await _callMethod("getPushSettings", {
      if (deviceId != null) "device_id": deviceId,
      if (token != null) "token": token,
    });

    return data.response;
  }

  /// Signs a device based on iOS, Android, Windows Phone or Mac to receive Push notifications.
  Future<bool> registerDevice({
    required String token,
    String? deviceModel,
    int? deviceYear,
    required String deviceId,
    String? systemVersion,
    // TODO: Implement a class for this parameter.
    Json? settings,
    bool? sandbox,
  }) async {
    final data = await _callMethod("registerDevice", {
      "token": token,
      if (deviceModel != null) "device_model": deviceModel,
      if (deviceYear != null) "device_year": deviceYear,
      "device_id": deviceId,
      if (systemVersion != null) "system_version": systemVersion,
      if (settings != null) "settings": settings,
      if (sandbox != null) "sandbox": sandbox,
    });

    return data.response == 1;
  }

  /// Edits current profile information.
  Future<Json> saveProfileInfo({
    String? firstName,
    String? lastName,
    String? maidenName,
    String? screenName,
    int? cancelRequestId,
    // TODO: Realize the enum of the sexes of a person.
    int? sex,
    // TODO: Realize enum with marital status.
    int? relation,
    int? relationPartnerId,
    // TODO: Implement enum with date of birth visibility.
    String? bdate,
    int? bdateVisibility,
    String? homeTown,
    int? countryId,
    int? cityId,
    String? status,
  }) async {
    final data = await _callMethod("saveProfileInfo", {
      if (firstName != null) "first_name": firstName,
      if (lastName != null) "last_name": lastName,
      if (maidenName != null) "maiden_name": maidenName,
      if (cancelRequestId != null) "cancel_request_id": cancelRequestId,
      if (sex != null) "sex": sex,
      if (relation != null) "relation": relation,
      if (relationPartnerId != null) "relation_partner_id": relationPartnerId,
      if (bdate != null) "bdate": bdate,
      if (bdateVisibility != null) "bdate_visibility": bdateVisibility,
      if (homeTown != null) "home_town": homeTown,
      if (countryId != null) "country_id": countryId,
      if (cityId != null) "city_id": cityId,
      if (status != null) "status": status,
    });

    return data.response;
  }

  /// Allows you to edit information about the current account.
  Future<bool> setInfo({
    String? name,
    String? value,
    int? intro,
    bool? ownPostsDefault,
    bool? noWallReplies,
  }) async {
    final data = await _callMethod("setInfo", {
      if (name != null) "name": name,
      if (value != null) "value": value,
      if (intro != null) "intro": intro,
      if (ownPostsDefault != null) "own_posts_default": ownPostsDefault,
      if (noWallReplies != null) "no_wall_replies": noWallReplies,
    });

    return data.response == 1;
  }

  /// Sets the short name of the application (up to 17 characters), which is displayed by the user in the left menu.
  Future<bool> setNameInMenu({required int userId, String? name}) async {
    final data = await _callMethod("setNameInMenu", {
      "user_id": userId,
      if (name != null) "name": name,
    });

    return data.response == 1;
  }

  /// Marks the current user as offline (only in the current application).
  Future<bool> setOffline() async {
    final data = await _callMethod("setOffline", const {});

    return data.response == 1;
  }

  /// Marks the current user as online for 5 minutes.
  Future<bool> setOnline({bool? voip}) async {
    final data = await _callMethod("setOnline", {
      if (voip != null) "voip": voip,
    });

    return data.response == 1;
  }

  /// Changes the configuration of Push notifications.
  Future<bool> setPushSettings({
    required String deviceId,
    // TODO: Implement a class parameter. (https://vk.com/dev/objects/push_settings)
    Json? settings,
    String? key,
    List<String>? value,
  }) async {
    final data = await _callMethod("setPushSettings", {
      "device_id": deviceId,
      if (settings != null) "settings": settings,
      if (key != null) "key": key,
      if (value != null) "value": value.join(","),
    });

    return data.response == 1;
  }

  /// Disables push notifications at a given time interval.
  Future<bool> setSilenceMode({
    String? deviceId,
    int? time,
    int? peerId,
    bool? sound,
  }) async {
    final data = await _callMethod("setSilenceMode", {
      if (deviceId != null) "device_id": deviceId,
      if (time != null) "time": time,
      if (peerId != null) "peer_id": peerId,
      if (sound != null) "sound": sound ? 1 : 0,
    });

    return data.response == 1;
  }

  /// Deletes a user or group from a black list.
  Future<bool> unban({int? ownerId}) async {
    final data = await _callMethod("unban", {
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response == 1;
  }

  /// Unsubscribe a device from Push notifications.
  Future<bool> unregisterDevice({String? deviceId, bool? sandbox}) async {
    final data = await _callMethod("unregisterDevice", {
      if (deviceId != null) "device_id": deviceId,
      if (sandbox != null) "sandbox": sandbox,
    });

    return data.response == 1;
  }
}
