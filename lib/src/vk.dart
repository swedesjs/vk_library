import 'package:vk_library/src/upload/upload.dart';
import 'package:vk_library/vk_library.dart';

export 'api.dart';
export 'api/models.dart';

class VK {
  final VKOptions options;
  final API api;

  late final Upload upload;

  VK({required this.options}) : api = API(options) {
    upload = Upload(api);
  }
}
