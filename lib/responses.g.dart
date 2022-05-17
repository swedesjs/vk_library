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

PhotosUploadMessagesServer _$PhotosUploadMessagesServerFromJson(
        Map<String, dynamic> json) =>
    PhotosUploadMessagesServer(
      server: json['server'] as int,
      photo: json['photo'] as String,
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$PhotosUploadMessagesServerToJson(
        PhotosUploadMessagesServer instance) =>
    <String, dynamic>{
      'server': instance.server,
      'photo': instance.photo,
      'hash': instance.hash,
    };
