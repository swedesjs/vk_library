part of "../vk_library_models.dart";

/// A class for using the [`appWidgets`](https://vk.com/dev/appWidgets) methods.
class AppWidgets {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const AppWidgets(this._api);

  /// Get the URL to upload a photo to the application collection for [community app widgets](https://vk.com/dev/apps_widgets).
  Future<Json> getAppImageUploadServer({
    // TODO: Implement the enum. - https://vk.com/dev/appWidgets.getAppImageUploadServer
    required String imageType,
  }) async {
    final data = await _api.call("appWidgets.getAppImageUploadServer", {
      "image_type": imageType,
    });

    return data.response;
  }

  /// Retrieves the collection of images uploaded for the app in [community app widgets](https://vk.com/dev/apps_widgets).
  Future<Json> getAppImages({
    int? offset,
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/appWidgets.getAppImages
    String? imageType,
  }) async {
    final data = await _api.call("appWidgets.getAppImages", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (imageType != null) "image_type": imageType,
    });

    return data.response;
  }

  /// Get the URL to upload a photo to the community collection for [community app widgets](https://vk.com/dev/apps_widgets).
  Future<Json> getGroupImageUploadServer({
    // TODO: Implement the enum - https://vk.com/dev/apps.getAppImages
    required String imageType,
  }) async {
    final data = await _api.call("appWidgets.getGroupImageUploadServer", {
      "image_type": imageType,
    });

    return data.response;
  }

  /// Retrieves the collection of images uploaded for the app in [community app widgets](https://vk.com/dev/apps_widgets).
  Future<Json> getGroupImages({
    int? offset,
    int? count,
    // TODO: Implement the enum - https://vk.com/dev/appWidgets.getAppImages
    String? imageType,
  }) async {
    final data = await _api.call("appWidgets.getGroupImages", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (imageType != null) "image_type": imageType,
    });

    return data.response;
  }

  /// Retrieves an image for [community app widgets](https://vk.com/dev/apps_widgets) by its id.
  Future<Json> getImagesById({List<int>? images}) async {
    final data = await _api.call("appWidgets.getImagesById", {
      if (images != null) "images": images.join(","),
    });

    return data.response;
  }

  /// Allows you to save the image to the application collection for [Community Application Widgets](https://vk.com/dev/apps_widgets) after uploading to the server.
  Future<Json> saveAppImage({
    required String hash,
    required String image,
  }) async {
    final data = await _api.call("appWidgets.saveAppImage", {
      "hash": hash,
      "image": image,
    });

    return data.response;
  }

  /// Lets you save an image to the community collection for [community app widgets](https://vk.com/dev/apps_widgets). after uploading to the server.
  Future<Json> saveGroupImage({
    required String hash,
    required String image,
  }) async {
    final data = await _api.call("appWidgets.saveGroupImage", {
      "hash": hash,
      "image": image,
    });

    return data.response;
  }

  /// Allows you to update the [community app widget](https://vk.com/dev/apps_widgets).
  Future<bool> update({
    String? code,
    // TODO: Implement the enum - https://vk.com/dev/appWidgets.update
    String? type,
  }) async {
    final data = await _api.call("appWidgets.update", {
      if (code != null) "code": code,
      if (type != null) "type": type,
    });

    return data.response == 1;
  }
}
