part of vk_library;

/// Enum is a list of cases.
enum NameCase {
  /// Nominative.
  NOM,

  /// Genitive.
  GEN,

  /// Dative.
  DAT,

  /// Accusative.
  ACC,

  /// Instrumental.
  INS,

  /// Prepositional.
  ABL
}

extension _NameCase on NameCase {
  String stringValue() => _stringValue(this);
}
