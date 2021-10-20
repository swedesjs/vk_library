part of vk_library;

class NameCase {
  static const NOM = NameCase("nom");
  static const GEN = NameCase("gen");
  static const DAT = NameCase("dat");
  static const ACC = NameCase("acc");
  static const INS = NameCase("ins");
  static const ABL = NameCase("abl");

  final String namecase;
  const NameCase(this.namecase);

  @override
  String toString() => namecase;
}
