part of vk_library;

/// A class for using the [`storage`](https://vk.com/dev/storage) methods.
class Storage {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Storage(API api) : _callMethod = api._callMethod("storage");

  /// Returns the value of the variable whose name is transmitted in the Key parameter.
  Future<List<Json>> get({
    String? key,
    List<String>? keys,
    int? userId,
  }) async {
    final data = await _callMethod("get", {
      if (key != null) "key": key,
      if (keys != null) "keys": keys.join(","),
      if (userId != null) "user_id": userId,
    });

    return data.response;
  }

  // Returns the names of all variables.
  Future<List<String>> getKeys({
    int? userId,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("getKeys", {
      if (userId != null) "user_id": userId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Saves the value of the variable whose name is transmitted in the [key] parameter.
  Future<bool> set({
    required String key,
    String? value,
    int? userId,
  }) async {
    final data = await _callMethod("set", {
      "key": key,
      if (value != null) "value": value,
      if (userId != null) "user_id": userId,
    });

    return data.response == 1;
  }
}