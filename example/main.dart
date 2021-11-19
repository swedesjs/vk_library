// ignore_for_file: avoid_print

import "package:vk_library/vk_library.dart";
import "package:vk_library/vk_library_enums/vk_library_enums.dart"
    show Language;

void main() async {
  final vk = VK(
    token: "token",
    language: Language.RU,
    version: "5.131",
  );

  await vk.api.messages.send(chatId: 1, message: "Hello");

  final userInfo = await vk.api.call("users.get", {"user_id": 1});
  print(userInfo);
}
