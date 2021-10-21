part of vk_library;

/// The class is used for the [VK], [API] classes as the `language` parameter, for example:
/// ```dart
/// final vk = VK(token: "token", language: Language.RU);
/// ```
class Language {
  /// Russian language
  static const RU = Language("ru");

  /// The format of the string sent to VK
  final String language;

  /// It is not advisable to create an instance
  const Language(this.language);

  @override
  String toString() => language;
}
