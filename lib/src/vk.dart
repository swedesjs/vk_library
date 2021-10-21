part of vk_library;

/// The most important class that will create an instance of the [API] class, and others in the upcoming updates!
class VK {
  /// Instance of class [API]
  final API api;

  /// Specify the [token] parameter to access the api and work with it, if the token is not valid, the library cannot tell you this until you contact the [api] instance
  ///
  /// Specify the [version] and [language] parameters as desired for the result you want!
  VK({
    required String token,
    String version = "5.131",
    Language language = Language.RU,
  }) : api = API(token, version, language);
}
