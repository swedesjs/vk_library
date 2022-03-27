import 'package:vk_library/src/api.dart';

class Secure {
  final API _api;

  Secure(this._api);

  /// Adds user activity information to an application
  Future<Map<String, dynamic>> addAppEvent({
    required int userId,
    required int activityId,
    int? value,
  }) =>
      _api.request('secure.addAppEvent', {
        'user_id': userId,
        'activity_id': activityId,
        if (value != null) 'value': value,
      });

  /// Checks the user authentication in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
  Future<Map<String, dynamic>> checkToken({
    String? token,
    String? ip,
  }) =>
      _api.request('secure.checkToken', {
        if (token != null) 'token': token,
        if (ip != null) 'ip': ip,
      });

  /// Returns payment balance of the application in hundredth of a vote.
  Future<Map<String, dynamic>> getAppBalance() =>
      _api.request('secure.getAppBalance');

  /// Shows a list of SMS notifications sent by the application using [Secure.sendSMSNotification] method.
  Future<Map<String, dynamic>> getSMSHistory({
    int? userId,
    int? dateFrom,
    int? dateTo,
    int? limit,
  }) =>
      _api.request('secure.getSMSHistory', {
        if (userId != null) 'user_id': userId,
        if (dateFrom != null) 'date_from': dateFrom,
        if (dateTo != null) 'date_to': dateTo,
        if (limit != null) 'limit': limit,
      });

  /// Shows history of votes transaction between users and the application.
  Future<Map<String, dynamic>> getTransactionsHistory({
    int? type,
    int? uidFrom,
    int? uidTo,
    int? dateFrom,
    int? dateTo,
    int? limit,
  }) =>
      _api.request('secure.getTransactionsHistory', {
        if (type != null) 'type': type,
        if (uidFrom != null) 'uid_from': uidFrom,
        if (uidTo != null) 'uid_to': uidTo,
        if (dateFrom != null) 'date_from': dateFrom,
        if (dateTo != null) 'date_to': dateTo,
        if (limit != null) 'limit': limit,
      });

  /// Returns one of the previously set game levels of one or more users in the application.
  Future<Map<String, dynamic>> getUserLevel({
    required List<int> userIds,
  }) =>
      _api.request('secure.getUserLevel', {
        'user_ids': userIds.join(','),
      });

  /// Opens the game achievement and gives the user a sticker
  Future<Map<String, dynamic>> giveEventSticker({
    required List<int> userIds,
    required int achievementId,
  }) =>
      _api.request('secure.giveEventSticker', {
        'user_ids': userIds.join(','),
        'achievement_id': achievementId,
      });

  /// Sends notification to the user.
  Future<Map<String, dynamic>> sendNotification({
    List<int>? userIds,
    int? userId,
    required String message,
  }) =>
      _api.request('secure.sendNotification', {
        if (userIds != null) 'user_ids': userIds.join(','),
        if (userId != null) 'user_id': userId,
        'message': message,
      });

  /// Sends 'SMS' notification to a user's mobile device.
  Future<Map<String, dynamic>> sendSMSNotification({
    required int userId,
    required String message,
  }) =>
      _api.request('secure.sendSMSNotification', {
        'user_id': userId,
        'message': message,
      });

  /// Sets a counter which is shown to the user in bold in the left menu.
  Future<Map<String, dynamic>> setCounter({
    List<String>? counters,
    int? userId,
    int? counter,
    bool? increment,
  }) =>
      _api.request('secure.setCounter', {
        if (counters != null) 'counters': counters.join(','),
        if (userId != null) 'user_id': userId,
        if (counter != null) 'counter': counter,
        if (increment != null) 'increment': increment,
      });
}
