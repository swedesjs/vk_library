part of vk_library.responses;

@JsonSerializable()
class PhotosGetMessagesUploadServer {
  final int albumId;
  final String uploadUrl;
  final int userId;

  PhotosGetMessagesUploadServer({
    required this.albumId,
    required this.uploadUrl,
    required this.userId,
  });

  factory PhotosGetMessagesUploadServer.fromJson(Map<String, dynamic> json) =>
      _$PhotosGetMessagesUploadServerFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosGetMessagesUploadServerToJson(this);
}

@JsonSerializable()
class PhotosUploadMessagesServer {
  final int server;
  final String photo;
  final String hash;

  PhotosUploadMessagesServer({
    required this.server,
    required this.photo,
    required this.hash,
  });

  factory PhotosUploadMessagesServer.fromJson(Map<String, dynamic> json) =>
      _$PhotosUploadMessagesServerFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosUploadMessagesServerToJson(this);
}
