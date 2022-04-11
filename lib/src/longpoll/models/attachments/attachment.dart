import 'package:json_annotation/json_annotation.dart';

import '../../models.dart';
import '../objects/objects.dart';

part 'attachment.g.dart';

part 'audio.dart';

part 'doc.dart';

part 'general_classes.dart';

part 'gifts.dart';

part 'link.dart';

part 'market.dart';

part 'market_album.dart';

part 'photo.dart';

part 'sticker.dart';

part 'video.dart';

part 'wall.dart';

part 'wall_reply.dart';

@JsonSerializable(createFactory: false)
abstract class Attachment {
  final AttachmentType type;

  Attachment({required this.type});

  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum AttachmentType {
  photo,
  video,
  audio,
  doc,
  link,
  market,
  marketAlbum,
  wall,
  wallReply,
  sticker,
  gift
}

List<Attachment> transformAttachments(List<dynamic> rawAttachments) {
  final attachments = <Attachment>[];

  for (final rawAttachment in rawAttachments) {
    final type = rawAttachment['type'];
    final enumType = $enumDecode(_$AttachmentTypeEnumMap, type);
    final object = rawAttachment[type];

    switch (enumType) {
      case AttachmentType.photo:
        attachments.add(PhotoAttachment.fromJson(object));
        break;
      case AttachmentType.video:
        attachments.add(VideoAttachment.fromJson(object));
        break;
      case AttachmentType.audio:
        attachments.add(AudioAttachment.fromJson(object));
        break;
      case AttachmentType.doc:
        attachments.add(DocAttachment.fromJson(object));
        break;
      case AttachmentType.link:
        attachments.add(LinkAttachment.fromJson(object));
        break;
      case AttachmentType.market:
        attachments.add(MarketAttachment.fromJson(object));
        break;
      case AttachmentType.marketAlbum:
        attachments.add(MarketAlbumAttachment.fromJson(object));
        break;
      case AttachmentType.wall:
        attachments.add(WallAttachment.fromJson(object));
        break;
      case AttachmentType.wallReply:
        attachments.add(WallReplyAttachment.fromJson(object));
        break;
      case AttachmentType.sticker:
        attachments.add(StickerAttachment.fromJson(object));
        break;
      case AttachmentType.gift:
        attachments.add(MarketAlbumAttachment.fromJson(object));
        break;
    }
  }

  return attachments;
}