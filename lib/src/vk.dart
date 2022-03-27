import 'package:vk_library/src/api.dart';
import 'package:vk_library/src/models/vk_options.dart';

export 'api.dart';
export 'models/api_exception.dart';
export 'models/vk_options.dart';

class VK {
  final VKOptions options;
  final API api;

  VK({required this.options}) : api = API(options);
}
