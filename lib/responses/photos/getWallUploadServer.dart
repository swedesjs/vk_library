part of vk_library.responses;

@JsonSerializable()
class PhotosGetWallUploadServer {
  final int albumId;
  final String uploadUrl;
  final int userId;

  PhotosGetWallUploadServer({
    required this.albumId,
    required this.uploadUrl,
    required this.userId,
  });

  factory PhotosGetWallUploadServer.fromJson(Map<String, dynamic> json) =>
      _$PhotosGetWallUploadServerFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosGetWallUploadServerToJson(this);
}
