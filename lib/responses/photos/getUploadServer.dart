part of vk_library.responses;

@JsonSerializable()
class PhotosGetUploadServer {
  final int albumId;
  final String uploadUrl;
  final int userId;

  PhotosGetUploadServer({
    required this.albumId,
    required this.uploadUrl,
    required this.userId,
  });

  factory PhotosGetUploadServer.fromJson(Map<String, dynamic> json) =>
      _$PhotosGetUploadServerFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosGetUploadServerToJson(this);
}
