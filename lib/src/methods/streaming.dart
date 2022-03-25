import 'package:vk_library/src/api.dart';

class Streaming {
  final API _api;

  Streaming(this._api);

  Future<Map<String, dynamic>> getServerUrl() =>
      _api.request('streaming.getServerUrl');

  Future<Map<String, dynamic>> setSettings({
    String? monthlyTier,
  }) =>
      _api.request('streaming.setSettings', {
        if (monthlyTier != null) 'monthly_tier': monthlyTier,
      });
}
