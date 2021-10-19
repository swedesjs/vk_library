part of vk_library;

class VK {
  final API api;

  VK({
    required String token,
    String version = "5.131",
    Language language = Language.RU,
  }) : api = API(token, version, language);
}
