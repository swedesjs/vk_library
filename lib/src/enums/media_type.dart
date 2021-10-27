part of vk_library;

/// Enum is a type of material that needs to be returned.
enum MediaType {
  /// Photo.
  PHOTO,

  /// Video.
  VIDEO,

  /// Audio recordings.
  AUDIO,

  /// The documents.
  DOC,

  /// Links.
  LINK,

  /// Goods.
  MARKET,

  /// Posts on the wall.
  WALL,

  /// Links, products and posts on the wall.
  SHARE
}

/// Map is used to send the desired type to VK. The keys contain the [MediaType] enum values, the values ​​contain the same enum values, only in lower case.
/// ```dart
/// print(_mediaTypeString[MediaType.DOC]); // doc
/// ```
const _mediaTypeString = <MediaType, String>{
  MediaType.PHOTO: "photo",
  MediaType.VIDEO: "video",
  MediaType.AUDIO: "audio",
  MediaType.DOC: "doc",
  MediaType.LINK: "link",
  MediaType.MARKET: "market",
  MediaType.WALL: "wall",
  MediaType.SHARE: "share"
};
