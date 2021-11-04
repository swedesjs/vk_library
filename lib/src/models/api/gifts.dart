part of vk_library;

/// A class for using the [`gifts`](https://vk.com/dev/gifts) methods.
class Gifts {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Gifts(API api) : _callMethod = api._callMethod("gifts");

  /// Returns a list of the user's gifts received.
  Future<Json> get({int? user_id, int? count, int? offset}) async {
    final data = await _callMethod("get", {
      if (user_id != null) "user_id": user_id,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
    });

    return data.response;
  }
}
