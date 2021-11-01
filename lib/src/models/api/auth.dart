part of vk_library;

/// A class for using the [`auth`](https://vk.com/dev/auth) methods.
class Auth {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Auth(API api) : _callMethod = api._callMethod("auth");

  /// Allows you to restore access to your account using the code received via SMS.
  Future<Json> restore({required int phone, required String lastName}) async {
    final data = await _callMethod("restore", {
      "phone": phone,
      "last_name": lastName,
    });

    return data.response;
  }
}
