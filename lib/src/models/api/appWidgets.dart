part of vk_library;

/// A class for using the [`appWidgets`](https://vk.com/dev/appWidgets) methods.
class AppWidgets {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  AppWidgets(API api) : _callMethod = api._callMethod("appWidgets");

  /// Get the URL to upload a photo to the application collection for [community app widgets](https://vk.com/dev/apps_widgets).
  Future<Json> getAppImageUploadServer({
    // TODO: Implement the enum. - https://vk.com/dev/appWidgets.getAppImageUploadServer
    required String imageType,
  }) async {
    final data = await _callMethod("getAppImageUploadServer", {
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
    final data = await _callMethod("getAppImages", {
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
    final data = await _callMethod("getGroupImageUploadServer", {
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
    final data = await _callMethod("getGroupImages", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (imageType != null) "image_type": imageType,
    });

    return data.response;
  }

  /// Retrieves an image for [community app widgets](https://vk.com/dev/apps_widgets) by its id.
  Future<Json> getImagesById({List<int>? images}) async {
    final data = await _callMethod("getImagesById", {
      if (images != null) "images": images.join(","),
    });

    return data.response;
  }

  /// Allows you to save the image to the application collection for [Community Application Widgets](https://vk.com/dev/apps_widgets) after uploading to the server.
  Future<Json> saveAppImage({
    required String hash,
    required String image,
  }) async {
    final data = await _callMethod("saveAppImage", {
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
    final data = await _callMethod("saveGroupImage", {
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
    final data = await _callMethod("update", {
      if (code != null) "code": code,
      if (type != null) "type": type,
    });

    return data.response == 1;
  }
}
