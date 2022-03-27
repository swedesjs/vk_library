import 'package:vk_library/vk_library.dart';

export 'api.dart';
export 'api/models.dart';

class VK {
  final VKOptions options;
  final API api;

  VK({required this.options}) : api = API(options);
}
