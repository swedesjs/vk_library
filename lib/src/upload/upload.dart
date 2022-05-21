import 'package:dio/dio.dart';
import 'package:vk_library/src/upload/helpers.dart';
import 'package:vk_library/vk_library.dart';

class Upload {
  final API _api;

  Upload(this._api);

  Future<T> fetch<T>({
    required String field,
    required Map<String, dynamic> params,
    required Function getServer,
    required List<String> serverParams,
    required Function saveFiles,
    required List<String> saveParams,
    required int maxFiles,
    required List<String> files,
  }) async {
    if (files.length > maxFiles) {
      throw Exception(
        'The number of files must not exceed $maxFiles!',
      );
    }

    final server = await getServer.apply(
      namedArguments: whereParams(params, serverParams),
    );

    final upload = await fileTransfer(
      server['response']['upload_url'],
      FormData.fromMap(
        maxFiles == 1
            ? {field: await MultipartFile.fromFile(files[0])}
            : await formDataFiles(field, files),
      ),
    );

    final saveRequestParams = whereParams(params, saveParams)
      ..addAll(whereParams(
        upload.keysSnakeToCamel(),
        const ['server', 'photo', 'photoList', 'hash', 'response'],
      ));

    final save = await saveFiles.apply(namedArguments: saveRequestParams);

    return save['response'];
  }

  Future<List<PhotoAttachment>> photoAlbum({
    required List<String> files,
    required int albumId,
    int? groupId,
    num? latitude,
    num? longitude,
    String? caption,
  }) async {
    final photos = await fetch<List<dynamic>>(
      field: 'file',
      params: {
        'albumId': albumId,
        'groupId': groupId,
        'latitude': latitude,
        'longitude': longitude,
        'caption': caption
      },
      getServer: _api.photos.getUploadServer,
      serverParams: const ['albumId', 'groupId'],
      saveFiles: _api.photos.save,
      saveParams: const [
        'albumId',
        'groupId',
        'latitude',
        'longitude',
        'caption'
      ],
      maxFiles: 5,
      files: files,
    );

    return photos
        .map((e) => PhotoAttachment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<PhotoAttachment> photoWall({
    required String file,
    int? userId,
    int? groupId,
    num? latitude,
    num? longitude,
    String? caption,
  }) async {
    final photo = await fetch<List<dynamic>>(
      field: 'photo',
      params: {
        'userId': userId,
        'groupId': groupId,
        'latitude': latitude,
        'longitude': longitude,
        'caption': caption,
      },
      getServer: _api.photos.getWallUploadServer,
      serverParams: const ['groupId'],
      saveFiles: _api.photos.saveWallPhoto,
      saveParams: const [
        'userId',
        'groupId',
        'latitude',
        'longitude',
        'caption'
      ],
      maxFiles: 1,
      files: [file],
    );

    return PhotoAttachment.fromJson(photo[0]);
  }

  Future<Map<String, dynamic>> photoMain({
    required String file,
    int? ownerId,
  }) async {
    final photo = await fetch<Map<String, dynamic>>(
      field: 'photo',
      params: {'ownerId': ownerId},
      getServer: _api.photos.getOwnerPhotoUploadServer,
      serverParams: const ['ownerId'],
      saveFiles: _api.photos.saveOwnerPhoto,
      saveParams: const [],
      maxFiles: 1,
      files: [file],
    );

    return photo;
  }

  Future<PhotoAttachment> photoMessage({
    required String file,
    int? peerId,
  }) async {
    final photo = await fetch<List<dynamic>>(
      field: 'photo',
      params: {'peerId': peerId},
      getServer: _api.photos.getMessagesUploadServer,
      serverParams: const ['peerId'],
      saveFiles: _api.photos.saveMessagesPhoto,
      saveParams: const [],
      maxFiles: 1,
      files: [file],
    );

    return PhotoAttachment.fromJson(photo[0]);
  }

  Future<Map<String, dynamic>> photoChat({
    required String file,
    required int chatId,
    int? cropX,
    int? cropY,
    int? cropWidth,
  }) async {
    final photo = await fetch<Map<String, dynamic>>(
      field: 'file',
      params: {
        'chatId': chatId,
        'cropX': cropX,
        'cropY': cropY,
        'cropWidth': cropWidth,
      },
      getServer: _api.photos.getChatUploadServer,
      serverParams: const ['chatId', 'cropX', 'cropY', 'cropWidth'],
      saveFiles: ({required String response}) =>
          _api.messages.setChatPhoto(file: response),
      saveParams: const [],
      maxFiles: 1,
      files: [file],
    );

    return photo;
  }

  Future<PhotoAttachment> photoMarket({
    required String file,
    required int groupId,
    bool? mainPhoto,
    int? cropX,
    int? cropY,
    int? cropWidth,
  }) async {
    final photo = await fetch<List<dynamic>>(
      field: 'file',
      params: {
        'groupId': groupId,
        'mainPhoto': mainPhoto,
        'cropX': cropX,
        'cropY': cropY,
        'cropWidth': cropWidth
      },
      getServer: _api.photos.getMarketUploadServer,
      serverParams: const [
        'groupId',
        'mainPhoto',
        'cropX',
        'cropY',
        'cropWidth'
      ],
      saveFiles: _api.photos.saveMarketPhoto,
      saveParams: const ['groupId'],
      maxFiles: 1,
      files: [file],
    );

    return PhotoAttachment.fromJson(photo[0]);
  }

  Future<PhotoAttachment> photoMarketAlbum({
    required String file,
    required int groupId,
  }) async {
    final photo = await fetch<List<dynamic>>(
      field: 'file',
      params: {'groupId': groupId},
      getServer: _api.photos.getMarketAlbumUploadServer,
      serverParams: const ['groupId'],
      saveFiles: _api.photos.saveMarketAlbumPhoto,
      saveParams: const ['groupId'],
      maxFiles: 1,
      files: [file],
    );

    return PhotoAttachment.fromJson(photo[0]);
  }

  Future<AudioAttachment> audio({required String file}) async {
    throw UnimplementedError();
  }

  Future video({required String file}) async {
    throw UnimplementedError();
  }

  Future doc({required String file}) async {
    throw UnimplementedError();
  }

  Future docWall({required String file}) async {
    throw UnimplementedError();
  }

  Future docMessage({required String file}) async {
    throw UnimplementedError();
  }

  Future groupCover({required String file}) async {
    throw UnimplementedError();
  }

  Future audioMessage({required String file}) async {
    throw UnimplementedError();
  }

  Future storiesPhoto({required String file}) async {
    throw UnimplementedError();
  }

  Future storiesVideo({required String file}) async {
    throw UnimplementedError();
  }
}
