import 'package:vk_library/vk_library.dart';

void main() async {
  final vk = VK(options: const VKOptions(token: ''));
  print(await vk.api.users.get(userIds: 1));
}
