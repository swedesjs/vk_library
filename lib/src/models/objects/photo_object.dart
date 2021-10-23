part of vk_library;

/// Interface describing the `photo`
class PhotoObject {
  /// The object that is used for the interface
  final Json object;

  const PhotoObject(this.object);

  /// Photo ID.
  int get id => object["id"];

  /// The ID of the album that contains the photo.
  int get albumId => object["album_id"];

  /// Photo owner ID.
  int get ownerId => object["owner_id"];

  /// The ID of the user who uploaded the photo (if the photo is posted in a community). For photos posted on behalf of the community, [user_id] = *100*.
  int get userId => object["user_id"];

  /// Photo description text.
  String get text => object["text"];

  /// Date added in `unixtime` format.
  int get date => object["date"];

  /// Array with copies of the image in different sizes. See [Photo size description format](https://vk.com/dev/photo_sizes).
  List<dynamic> get sizes => object["sizes"];

  /// URL of a copy of the photo with a maximum size of 75x75px.
  String get photo_75 => object["photo_75"];

  /// URL of a photo copy with a maximum size of 130x130px.
  String get photo_130 => object["photo_130"];

  /// URL of a copy of the photo with a maximum size of 604x604px.
  String get photo_604 => object["photo_604"];

  /// URL of a copy of a photo with a maximum size of 807x807px.
  String get photo_807 => object["photo_807"];

  /// URL of a copy of the photo with a maximum size of 1280x1024px.
  String get photo_1280 => object["photo_1280"];

  /// URL of a photo copy with a maximum size of 2560x2048px.
  String get photo_2560 => object["photo_2560"];

  /// The width of the original photo in pixels.
  int get width => object["width"];

  /// The height of the original photo in pixels.
  int get height => object["height"];
}
