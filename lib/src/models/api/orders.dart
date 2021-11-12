part of vk_library;

/// A class for using the [`orders`](https://vk.com/dev/orders) methods.
class Orders {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Orders(this._api);

  /// Cancels subscription.
  Future<bool> cancelSubscription({
    required int userId,
    required int subscriptionId,
    bool? pendingCancel,
  }) async {
    final data = await _api.call("orders.cancelSubscription", {
      "user_id": userId,
      "subscription_id": subscriptionId,
      if (pendingCancel != null) "pending_cancel": pendingCancel,
    });

    return data.response == 1;
  }

  /// Changes the order status.
  Future<String> changeState({
    required int orderId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/orders.changeState
    required String action,
    int? appOrderId,
    bool? testMode,
  }) async {
    final data = await _api.call("orders.changeState", {
      "order_id": orderId,
      "action": action,
      if (appOrderId != null) "app_order_id": appOrderId,
      if (testMode != null) "test_mode": testMode,
    });

    return data.response;
  }

  /// Returns the list of orders.
  Future<List<String>> get({
    int? offset,
    int? count,
    bool? testMode,
  }) async {
    final data = await _api.call("orders.get", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (testMode != null) "test_mode": testMode,
    });

    return data.response;
  }

  /// Returns the cost of votes in the user's currency.
  Future<List<Json>> getAmount({
    required int userId,
    required List<String> votes,
  }) async {
    final data = await _api.call("orders.getAmount", {
      "user_id": userId,
      "votes": votes.join(","),
    });

    return data.response;
  }

  /// Returns information about a separate order.
  Future<List<String>> getById({
    int? orderId,
    List<int>? orderIds,
    bool? testMode,
  }) async {
    final data = await _api.call("orders.getById", {
      if (orderId != null) "order_id": orderId,
      if (orderIds != null) "order_ids": orderIds.join(","),
      if (testMode != null) "test_mode": testMode,
    });

    return data.response;
  }

  /// Gets information about the subscription to its identifier.
  Future<Json> getUserSubscriptionById({
    required int userId,
    required int subscriptionId,
  }) async {
    final data = await _api.call("orders.getUserSubscriptionById", {
      "user_id": userId,
      "subscription_id": subscriptionId,
    });

    return data.response;
  }

  /// Gets a list of active user subscriptions.
  Future<Json> getUserSubscriptions({
    required int userId,
  }) async {
    final data = await _api.call("orders.getUserSubscriptions", {
      "user_id": userId,
    });

    return data.response;
  }

  /// Updates the subscription price for the user.
  Future<bool> updateSubscription({
    required int userId,
    required int subscriptionId,
    required int price,
  }) async {
    final data = await _api.call("orders.updateSubscription", {
      "user_id": userId,
      "subscription_id": subscriptionId,
      "price": price,
    });

    return data.response == 1;
  }
}
