part of vk_library;

/// The interface responsible for photo copies
class PhotoObject {
  /// The object that is used for the interface
  final Json object;

  const PhotoObject(this.object);

  /// URL of a copy of a photo with a width of 50 px;
  String get photo_50 => object["photo_50"];

  /// URL of a copy of a photo with a width of 100 px;
  String get photo_100 => object["photo_100"];

  /// URL of a copy of a photo with a width of 200 px;
  String get photo_200 => object["photo_200"];
}
