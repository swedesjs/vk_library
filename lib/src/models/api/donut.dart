part of vk_library;

/// A class for using the [`donut`](https://vk.com/dev/donut) methods.
class Donut {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Donut(API api) : _callMethod = api._callMethod("donut");

  /// Returns a list of dons that are subscribed to certain communities from among the user's friends.
  Future<Json> getFriends({
    required int ownerId,
    int? offset,
    int? count,
    Set<String>? fields,
  }) async {
    final data = await _callMethod("getFriends", {
      "owner_id": ownerId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns information about the VK Donut subscription.
  Future<Json> getSubscription({required int ownerId}) async {
    final data = await _callMethod("getSubscription", {"owner_id": ownerId});

    return data.response;
  }

  /// Returns information about the user's subscriptions.
  Future<Json> getSubscriptions({
    Set<String>? fields,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("getSubscriptions", {
      if (fields != null) "fields": fields.join(","),
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns information about whether the user is subscribed to paid content (is a don).
  Future<bool> isDon({required int ownerId}) async {
    final data = await _callMethod("isDon", {"owner_id": ownerId});
    return data.response;
  }
}
