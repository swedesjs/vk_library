part of 'attachment.dart';

@JsonSerializable()
class StickerAttachment extends Attachment {
  /// Product Id.
  final int? productId;

  /// Sticker Id.
  final int? stickerId;

  /// Images for the sticker (with a transparent background).
  final List<GeneralClassAttachmentImage>? images;

  /// Images for the sticker (with an opaque background).
  final List<GeneralClassAttachmentImage>? imagesWithBackground;

  /// Sticker animation URL.
  final String? animationUrl;

  /// Information about whether the sticker is available.
  final bool? isAllowed;

  StickerAttachment({
    this.productId,
    this.stickerId,
    this.images,
    this.imagesWithBackground,
    this.animationUrl,
    this.isAllowed,
  }) : super(type: AttachmentType.sticker);

  factory StickerAttachment.fromJson(Map<String, dynamic> json) =>
      _$StickerAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StickerAttachmentToJson(this);
}
