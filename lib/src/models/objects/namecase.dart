part of vk_library;

/// Case enumeration class
///
/// *Example*:
/// ```dart
/// await vk.api.messages.getChat(chatId: 1, nameCase: NameCase.NOM);
/// ```
class NameCase {
  /// Nominative
  static const NOM = NameCase("nom");

  /// Genitive
  static const GEN = NameCase("gen");

  /// Dative
  static const DAT = NameCase("dat");

  /// Accusative
  static const ACC = NameCase("acc");

  /// Instrumental
  static const INS = NameCase("ins");

  /// Prepositional
  static const ABL = NameCase("abl");

  /// Abbreviated case
  final String namecase;

  /// It is not advisable to create an instance
  const NameCase(this.namecase);

  @override
  String toString() => namecase;
}
