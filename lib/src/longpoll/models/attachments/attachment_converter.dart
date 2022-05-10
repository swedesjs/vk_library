part of 'attachment.dart';

class AttachmentConverter
    extends JsonConverter<AbstractAttachment, Map<String, dynamic>> {
  const AttachmentConverter();

  /// Converts the map to an [AbstractAttachment] instance
  @override
  AbstractAttachment fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final enumType = $enumDecode(_$AttachmentTypeEnumMap, type);
    final object = json[type];

    switch (enumType) {
      case AttachmentType.photo:
        return PhotoAttachment.fromJson(object);
      case AttachmentType.video:
        return VideoAttachment.fromJson(object);
      case AttachmentType.audio:
        return AudioAttachment.fromJson(object);
      case AttachmentType.doc:
        return DocAttachment.fromJson(object);
      case AttachmentType.link:
        return LinkAttachment.fromJson(object);
      case AttachmentType.market:
        return MarketAttachment.fromJson(object);
      case AttachmentType.marketAlbum:
        return MarketAlbumAttachment.fromJson(object);
      case AttachmentType.wall:
        return WallAttachment.fromJson(object);
      case AttachmentType.wallReply:
        return WallReplyAttachment.fromJson(object);
      case AttachmentType.sticker:
        return StickerAttachment.fromJson(object);
      case AttachmentType.gift:
        return GiftAttachment.fromJson(object);
      case AttachmentType.audioMessage:
        return AudioMessageAttachment.fromJson(object);
      case AttachmentType.poll:
        return PollAttachment.fromJson(object);
      case AttachmentType.graffiti:
        return GraffitiAttachment.fromJson(object);
    }
  }

  @override
  Map<String, dynamic> toJson(AbstractAttachment object) => object.toJson();
}
