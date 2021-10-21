part of vk_library;

class MediaType {
  /// Photographs
  static const PHOTO = MediaType("photo");

  /// Videos
  static const VIDEO = MediaType("video");

  /// Audio recordings
  static const AUDIO = MediaType("audio");

  /// Documents
  static const DOC = MediaType("doc");

  /// Links
  static const LINK = MediaType("link");

  /// Goods
  static const MARKET = MediaType("market");

  /// Records
  static const WAll = MediaType("wall");

  /// Links, products and posts
  static const SHARE = MediaType("share");

  final String type;
  const MediaType(this.type);

  @override
  String toString() => type;
}
