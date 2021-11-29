part of vk_library_enums;

/// Widget type.
enum TypeAppWidgetsUpdate {
  /// Outputs text.
  TEXT,

  /// Lists objects with descriptions and buttons for actions.
  LIST,

  /// Displays a table with data.
  TABLE,

  /// Displays tiles with an image and a short description.
  TILES,

  /// Lists items in a compact format. Similar to the [LIST] widget, except that the button is positioned to the right.
  COMPACT_LIST,

  /// Lists images (1 to 3) with an action button, title, and description.
  COVER_LIST,

  /// Displays the current result of a sports match.
  MATCH,

  /// Lists sports matches.
  MATCHES,

  /// Displays the progress of donations.
  DONATION,
}
