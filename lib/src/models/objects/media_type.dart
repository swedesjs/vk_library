part of vk_library;

/// Class with enumerations for the mediaType parameter in the `messages.getHistoryAttachments` method
///
/// *Example*:
/// ```dart
/// await vk.api.messages.getHistoryAttachments(peerId: 1, mediaType: MediaType.PHOTO);
/// ```
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

  /// Original type
  final String type;

  /// It is not advisable to create an instance
  const MediaType(this.type);

  @override
  String toString() => type;
}
