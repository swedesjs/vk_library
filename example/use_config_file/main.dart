import "package:vk_library/vk_library.dart";

void main() async {
  // You can specify the type parameter with the value VKConfigFileType.YAML
  final vk = VK.configFile();

  await vk.api.messages.send(chatId: 1, message: "Hello!");
}
