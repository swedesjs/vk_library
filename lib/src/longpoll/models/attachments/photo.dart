part of 'attachment.dart';

/// An object describing a photo
///
/// https://dev.vk.com/reference/objects/photo
@JsonSerializable()
class PhotoAttachment extends AttachmentDefault {
  /// The ID of the album that the photo is in.
  final int? albumId;

  /// The ID of the user who uploaded the photo (if the photo is posted in the community). For photos posted on behalf of the community, user_id = 100.
  final int? userId;

  /// Photo description text.
  @JsonKey(name: 'text')
  final String? description;

  /// Date added.
  @DateTimeNullConverter()
  final DateTime? date;

  /// An array with copies of the image in different sizes.
  final List<PhotoSize>? sizes;

  /// The width of the original photo in pixels.
  final int? width;

  /// The height of the original photo in pixels.
  final int? height;

  PhotoAttachment({
    required int id,
    required int ownerId,
    String? accessKey,
    this.albumId,
    this.userId,
    this.description,
    this.date,
    this.sizes,
    this.width,
    this.height,
  }) : super(
          type: AttachmentType.photo,
          id: id,
          ownerId: ownerId,
          accessKey: accessKey,
        );

  factory PhotoAttachment.fromJson(Map<String, dynamic> json) =>
      _$PhotoAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhotoAttachmentToJson(this);
}

@JsonSerializable()
class PhotoSize extends GeneralClassAttachmentImage {
  /// Copy type.
  final PhotoSizeType? type;

  PhotoSize({this.type, String? url, int? width, int? height})
      : super(url: url, width: width, height: height);

  factory PhotoSize.fromJson(Map<String, dynamic> json) =>
      _$PhotoSizeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhotoSizeToJson(this);
}

enum PhotoSizeType { s, m, x, o, p, q, r, y, z, w }
