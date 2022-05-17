// GENERATED CODE - DO NOT MODIFY BY HAND

part of vk_library.responses;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotosGetMessagesUploadServer _$PhotosGetMessagesUploadServerFromJson(
        Map<String, dynamic> json) =>
    PhotosGetMessagesUploadServer(
      albumId: json['album_id'] as int,
      uploadUrl: json['upload_url'] as String,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$PhotosGetMessagesUploadServerToJson(
        PhotosGetMessagesUploadServer instance) =>
    <String, dynamic>{
      'album_id': instance.albumId,
      'upload_url': instance.uploadUrl,
      'user_id': instance.userId,
    };

PhotosGetUploadServer _$PhotosGetUploadServerFromJson(
        Map<String, dynamic> json) =>
    PhotosGetUploadServer(
      albumId: json['album_id'] as int,
      uploadUrl: json['upload_url'] as String,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$PhotosGetUploadServerToJson(
        PhotosGetUploadServer instance) =>
    <String, dynamic>{
      'album_id': instance.albumId,
      'upload_url': instance.uploadUrl,
      'user_id': instance.userId,
    };

PhotosGetWallUploadServer _$PhotosGetWallUploadServerFromJson(
        Map<String, dynamic> json) =>
    PhotosGetWallUploadServer(
      albumId: json['album_id'] as int,
      uploadUrl: json['upload_url'] as String,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$PhotosGetWallUploadServerToJson(
        PhotosGetWallUploadServer instance) =>
    <String, dynamic>{
      'album_id': instance.albumId,
      'upload_url': instance.uploadUrl,
      'user_id': instance.userId,
    };
