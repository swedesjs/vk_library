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

/// Base class for describing all media attachments in VK
///
/// Objects that describe media attachments:
///
/// - [PhotoAttachment]
/// - [VideoAttachment]
/// - [AudioAttachment]
/// - [DocAttachment]
/// - [LinkAttachment]
/// - [MarketAttachment]
/// - [MarketAlbumAttachment]
/// - [WallAttachment]
/// - [WallReplyAttachment]
/// - [StickerAttachment]
/// - [GiftAttachment]
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

@JsonSerializable()
class AttachmentDefault extends Attachment {
  /// ID Attachment
  final int id;

  /// Owner Id attachment
  final int ownerId;

  /// Content key
  final String? accessKey;

  AttachmentDefault({
    required AttachmentType type,
    required this.id,
    required this.ownerId,
    this.accessKey,
  }) : super(type: type);

  factory AttachmentDefault.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDefaultFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AttachmentDefaultToJson(this);
}

/// The function converts objects into the required classes dependent on the [Attachment] class
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
