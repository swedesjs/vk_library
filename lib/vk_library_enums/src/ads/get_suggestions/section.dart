part of vk_library_enums;

/// The section for which prompts are requested.
enum SectionAdsGetSuggestions {
  /// Country.
  COUNTRIES,

  /// Regions.
  REGIONS,

  /// Cities.
  CITIES,

  /// Districts.
  DISTRICTS,

  /// Metro stations.
  STATIONS,

  /// Streets.
  STREETS,

  /// Educational institutions: `schools`, `universities`, `faculties`, `departments`.
  SCHOOLS,

  /// Categories of interests.
  INTEREST_CATEGORIES_V2,

  /// Obsolete categories of interests.
  INTEREST_CATEGORIES,

  /// Positions (professions).
  POSITIONS,

  /// Religious views.
  RELIGIONS,

  /// Devices.
  USER_DEVICES,

  /// OS.
  USER_OS,

  /// Internet browsers.
  USER_BROWSERS,
}
