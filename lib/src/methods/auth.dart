import 'package:vk_library/src/api.dart';

class Auth {
  final API _api;

  Auth(this._api);

  /// Allows to restore account access using a code received via SMS. " This method is only available for apps with [vk.com/dev/auth_direct|Direct authorization] access. "
  Future<Map<String, dynamic>> restore({
    required String phone,
    required String lastName,
  }) =>
      _api.request('auth.restore', {
        'phone': phone,
        'last_name': lastName,
      });
}
