part of 'attachment.dart';

/// An object that describes a selection of products
///
/// https://dev.vk.com/reference/objects/market-album
@JsonSerializable()
class MarketAlbumAttachment extends Attachment {
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
    required int id,
    required int ownerId,
    String? accessKey,
    this.title,
    this.isMain,
    this.isHidden,
    this.photo,
    this.count,
  }) : super(
          type: AttachmentType.marketAlbum,
          id: id,
          ownerId: ownerId,
          accessKey: accessKey,
        );

  factory MarketAlbumAttachment.fromJson(Map<String, dynamic> json) =>
      _$MarketAlbumAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MarketAlbumAttachmentToJson(this);
}
