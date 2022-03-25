import 'package:vk_library/src/api.dart';

class Orders {
  final API _api;

  Orders(this._api);

  Future<Map<String, dynamic>> cancelSubscription({
    required int userId,
    required int subscriptionId,
    bool? pendingCancel,
  }) =>
      _api.request('orders.cancelSubscription', {
        'user_id': userId,
        'subscription_id': subscriptionId,
        if (pendingCancel != null) 'pending_cancel': pendingCancel,
      });

  Future<Map<String, dynamic>> changeState({
    required int orderId,
    required String action,
    int? appOrderId,
    bool? testMode,
  }) =>
      _api.request('orders.changeState', {
        'order_id': orderId,
        'action': action,
        if (appOrderId != null) 'app_order_id': appOrderId,
        if (testMode != null) 'test_mode': testMode,
      });

  Future<Map<String, dynamic>> get({
    int? offset,
    int? count,
    bool? testMode,
  }) =>
      _api.request('orders.get', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (testMode != null) 'test_mode': testMode,
      });

  Future<Map<String, dynamic>> getAmount({
    required int userId,
    required List<String> votes,
  }) =>
      _api.request('orders.getAmount', {
        'user_id': userId,
        'votes': votes.join(','),
      });

  Future<Map<String, dynamic>> getById({
    int? orderId,
    List<int>? orderIds,
    bool? testMode,
  }) =>
      _api.request('orders.getById', {
        if (orderId != null) 'order_id': orderId,
        if (orderIds != null) 'order_ids': orderIds.join(','),
        if (testMode != null) 'test_mode': testMode,
      });

  Future<Map<String, dynamic>> getUserSubscriptionById({
    required int userId,
    required int subscriptionId,
  }) =>
      _api.request('orders.getUserSubscriptionById', {
        'user_id': userId,
        'subscription_id': subscriptionId,
      });

  Future<Map<String, dynamic>> getUserSubscriptions({
    required int userId,
  }) =>
      _api.request('orders.getUserSubscriptions', {
        'user_id': userId,
      });

  Future<Map<String, dynamic>> updateSubscription({
    required int userId,
    required int subscriptionId,
    required int price,
  }) =>
      _api.request('orders.updateSubscription', {
        'user_id': userId,
        'subscription_id': subscriptionId,
        'price': price,
      });
}
