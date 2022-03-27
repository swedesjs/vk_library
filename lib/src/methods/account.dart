import 'package:vk_library/src/api.dart';

class Account {
  final API _api;

  Account(this._api);

  Future<Map<String, dynamic>> ban({
    int? ownerId,
  }) =>
      _api.request('account.ban', {
        if (ownerId != null) 'owner_id': ownerId,
      });

  /// Changes a user password after access is successfully restored with the [Auth.restore] method.
  Future<Map<String, dynamic>> changePassword({
    String? restoreSid,
    String? changePasswordHash,
    String? oldPassword,
    required String newPassword,
  }) =>
      _api.request('account.changePassword', {
        if (restoreSid != null) 'restore_sid': restoreSid,
        if (changePasswordHash != null)
          'change_password_hash': changePasswordHash,
        if (oldPassword != null) 'old_password': oldPassword,
        'new_password': newPassword,
      });

  /// Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
  Future<Map<String, dynamic>> getActiveOffers({
    int? offset,
    int? count,
  }) =>
      _api.request('account.getActiveOffers', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Gets settings of the user in this application.
  Future<Map<String, dynamic>> getAppPermissions({
    required int userId,
  }) =>
      _api.request('account.getAppPermissions', {
        'user_id': userId,
      });

  /// Returns a user's blacklist.
  Future<Map<String, dynamic>> getBanned({
    int? offset,
    int? count,
  }) =>
      _api.request('account.getBanned', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns non-null values of user counters.
  Future<Map<String, dynamic>> getCounters({
    List<String>? filter,
    int? userId,
  }) =>
      _api.request('account.getCounters', {
        if (filter != null) 'filter': filter.join(','),
        if (userId != null) 'user_id': userId,
      });

  /// Returns current account info.
  Future<Map<String, dynamic>> getInfo({
    List<String>? fields,
  }) =>
      _api.request('account.getInfo', {
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns the current account info.
  Future<Map<String, dynamic>> getProfileInfo() =>
      _api.request('account.getProfileInfo');

  /// Gets settings of push notifications.
  Future<Map<String, dynamic>> getPushSettings({
    String? deviceId,
  }) =>
      _api.request('account.getPushSettings', {
        if (deviceId != null) 'device_id': deviceId,
      });

  /// Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
  Future<Map<String, dynamic>> registerDevice({
    required String token,
    String? deviceModel,
    int? deviceYear,
    required String deviceId,
    String? systemVersion,
    String? settings,
    bool? sandbox,
  }) =>
      _api.request('account.registerDevice', {
        'token': token,
        if (deviceModel != null) 'device_model': deviceModel,
        if (deviceYear != null) 'device_year': deviceYear,
        'device_id': deviceId,
        if (systemVersion != null) 'system_version': systemVersion,
        if (settings != null) 'settings': settings,
        if (sandbox != null) 'sandbox': sandbox,
      });

  /// Edits current profile info.
  Future<Map<String, dynamic>> saveProfileInfo({
    String? firstName,
    String? lastName,
    String? maidenName,
    String? screenName,
    int? cancelRequestId,
    int? sex,
    int? relation,
    int? relationPartnerId,
    String? bdate,
    int? bdateVisibility,
    String? homeTown,
    int? countryId,
    int? cityId,
    String? status,
  }) =>
      _api.request('account.saveProfileInfo', {
        if (firstName != null) 'first_name': firstName,
        if (lastName != null) 'last_name': lastName,
        if (maidenName != null) 'maiden_name': maidenName,
        if (screenName != null) 'screen_name': screenName,
        if (cancelRequestId != null) 'cancel_request_id': cancelRequestId,
        if (sex != null) 'sex': sex,
        if (relation != null) 'relation': relation,
        if (relationPartnerId != null) 'relation_partner_id': relationPartnerId,
        if (bdate != null) 'bdate': bdate,
        if (bdateVisibility != null) 'bdate_visibility': bdateVisibility,
        if (homeTown != null) 'home_town': homeTown,
        if (countryId != null) 'country_id': countryId,
        if (cityId != null) 'city_id': cityId,
        if (status != null) 'status': status,
      });

  /// Allows to edit the current account info.
  Future<Map<String, dynamic>> setInfo({
    String? name,
    String? value,
  }) =>
      _api.request('account.setInfo', {
        if (name != null) 'name': name,
        if (value != null) 'value': value,
      });

  /// Marks a current user as offline.
  Future<Map<String, dynamic>> setOffline() =>
      _api.request('account.setOffline');

  /// Marks the current user as online for 15 minutes.
  Future<Map<String, dynamic>> setOnline({
    bool? voip,
  }) =>
      _api.request('account.setOnline', {
        if (voip != null) 'voip': voip,
      });

  /// Change push settings.
  Future<Map<String, dynamic>> setPushSettings({
    required String deviceId,
    String? settings,
    String? key,
    List<String>? value,
  }) =>
      _api.request('account.setPushSettings', {
        'device_id': deviceId,
        if (settings != null) 'settings': settings,
        if (key != null) 'key': key,
        if (value != null) 'value': value.join(','),
      });

  /// Mutes push notifications for the set period of time.
  Future<Map<String, dynamic>> setSilenceMode({
    String? deviceId,
    int? time,
    int? peerId,
    int? sound,
  }) =>
      _api.request('account.setSilenceMode', {
        if (deviceId != null) 'device_id': deviceId,
        if (time != null) 'time': time,
        if (peerId != null) 'peer_id': peerId,
        if (sound != null) 'sound': sound,
      });

  Future<Map<String, dynamic>> unban({
    int? ownerId,
  }) =>
      _api.request('account.unban', {
        if (ownerId != null) 'owner_id': ownerId,
      });

  /// Unsubscribes a device from push notifications.
  Future<Map<String, dynamic>> unregisterDevice({
    String? deviceId,
    bool? sandbox,
  }) =>
      _api.request('account.unregisterDevice', {
        if (deviceId != null) 'device_id': deviceId,
        if (sandbox != null) 'sandbox': sandbox,
      });
}
