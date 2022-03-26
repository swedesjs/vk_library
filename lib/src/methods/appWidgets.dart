import 'package:vk_library/src/api.dart';

class AppWidgets {
  final API _api;

  AppWidgets(this._api);

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Map<String, dynamic>> getAppImageUploadServer({
    required String imageType,
  }) =>
      _api.request('appWidgets.getAppImageUploadServer', {
        'image_type': imageType,
      });

  /// Returns an app collection of images for community app widgets
  Future<Map<String, dynamic>> getAppImages({
    int? offset,
    int? count,
    String? imageType,
  }) =>
      _api.request('appWidgets.getAppImages', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (imageType != null) 'image_type': imageType,
      });

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Map<String, dynamic>> getGroupImageUploadServer({
    required String imageType,
  }) =>
      _api.request('appWidgets.getGroupImageUploadServer', {
        'image_type': imageType,
      });

  /// Returns a community collection of images for community app widgets
  Future<Map<String, dynamic>> getGroupImages({
    int? offset,
    int? count,
    String? imageType,
  }) =>
      _api.request('appWidgets.getGroupImages', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (imageType != null) 'image_type': imageType,
      });

  /// Returns an image for community app widgets by its ID
  Future<Map<String, dynamic>> getImagesById({
    required List<String> images,
  }) =>
      _api.request('appWidgets.getImagesById', {
        'images': images.join(','),
      });

  /// Allows to save image into app collection for community app widgets
  Future<Map<String, dynamic>> saveAppImage({
    required String hash,
    required String image,
  }) =>
      _api.request('appWidgets.saveAppImage', {
        'hash': hash,
        'image': image,
      });

  /// Allows to save image into community collection for community app widgets
  Future<Map<String, dynamic>> saveGroupImage({
    required String hash,
    required String image,
  }) =>
      _api.request('appWidgets.saveGroupImage', {
        'hash': hash,
        'image': image,
      });

  /// Allows to update community app widget
  Future<Map<String, dynamic>> update({
    required String code,
    required String type,
  }) =>
      _api.request('appWidgets.update', {
        'code': code,
        'type': type,
      });
}
