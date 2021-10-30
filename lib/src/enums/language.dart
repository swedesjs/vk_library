part of vk_library;

/// Enum is a list of languages ​​in which VK can provide you with data! Used in class [VK] and [API]
enum Language {
  /// Russian.
  RU,

  /// Ukrainian.
  UK,

  /// Belorussian
  BE,

  /// English.
  EN,

  /// Spanish.
  ES,

  /// Finnish.
  FI,

  /// German.
  DE,

  /// Italian.
  IT
}

const _languageEnum = <Language, String>{
  Language.RU: "ru",
  Language.UK: "uk",
  Language.BE: "be",
  Language.EN: "en",
  Language.ES: "es",
  Language.FI: "fi",
  Language.DE: "de",
  Language.IT: "it"
};

const _languageString = <String, Language>{
  "ru": Language.RU,
  "uk": Language.UK,
  "be": Language.BE,
  "en": Language.EN,
  "es": Language.ES,
  "fi": Language.FI,
  "de": Language.DE,
  "it": Language.IT
};