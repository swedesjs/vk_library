import 'package:vk_library/src/api.dart';

class Auth {
  final API _api;

  Auth(this._api);

  Future<Map<String, dynamic>> restore({
    required String phone,
    required String lastName,
  }) =>
      _api.request('auth.restore', {
        'phone': phone,
        'last_name': lastName,
      });
}
