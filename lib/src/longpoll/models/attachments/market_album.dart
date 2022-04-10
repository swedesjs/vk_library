part of 'attachment.dart';

@JsonSerializable()
class MarketAlbumAttachment extends Attachment {
  /// Collection ID.
  final int id;

  /// Collection owner ID.
  final int ownerId;

  /// Content access key.
  final String? accessKey;

  /// The name of the collection.
  final String? title;

  /// Is the selection the main one.
  final bool? isMain;

  /// Whether the selection is hidden.
  final bool? isHidden;

  /// Collection cover.
  final Map<String, dynamic>? photo;

  /// The number of items in the collection.
  final int? count;

  MarketAlbumAttachment({
    required this.id,
    required this.ownerId,
    this.accessKey,
    this.title,
    this.isMain,
    this.isHidden,
    this.photo,
    this.count,
  }) : super(type: AttachmentType.marketAlbum);

  factory MarketAlbumAttachment.fromJson(Map<String, dynamic> json) =>
      _$MarketAlbumAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MarketAlbumAttachmentToJson(this);
}
