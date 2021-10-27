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

const _nameCaseString = <NameCase, String>{
  NameCase.NOM: "nom",
  NameCase.GEN: "gen",
  NameCase.DAT: "dat",
  NameCase.ACC: "acc",
  NameCase.INS: "ins",
  NameCase.ABL: "abl"
};
