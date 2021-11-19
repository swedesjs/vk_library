part of "../vk_library_models.dart";

/// A class for using the [`auth`](https://vk.com/dev/auth) methods.
class Auth {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Auth(this._api);

  /// Allows you to restore access to your account using the code received via SMS.
  Future<Json> restore({required int phone, required String lastName}) async {
    final data = await _api.call("auth.restore", {
      "phone": phone,
      "last_name": lastName,
    });

    return data.response;
  }
}
