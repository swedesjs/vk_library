part of vk_library;

class Language {
  static const RU = Language("ru");

  final String language;

  const Language(this.language);

  @override
  String toString() => language;
}
