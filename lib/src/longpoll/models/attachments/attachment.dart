import 'package:json_annotation/json_annotation.dart';

import '../../models.dart';
import '../converters.dart';

part 'attachment.g.dart';

part 'attachment_converter.dart';

part 'audio.dart';

part 'audio_message.dart';

part 'doc.dart';

part 'external_attachment.dart';

part 'general_classes.dart';

part 'gifts.dart';

part 'graffiti.dart';

part 'link.dart';

part 'market.dart';

part 'market_album.dart';

part 'photo.dart';

part 'poll.dart';

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
/// - [AudioMessageAttachment]
/// - [PollAttachment]
@JsonSerializable(createFactory: false)
abstract class AbstractAttachment {
  final AttachmentType type;

  AbstractAttachment({required this.type});

  Map<String, dynamic> toJson() => _$AbstractAttachmentToJson(this);

  /// Possible string representation
  @JsonKey(ignore: true)
  bool get canBeAttach;

  @override
  String toString() => runtimeType.toString();
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
  gift,
  audioMessage,
  poll,
  graffiti
}

@JsonSerializable()
class Attachment extends AbstractAttachment {
  /// ID Attachment
  final int id;

  /// Owner Id attachment
  final int ownerId;

  /// Content key
  final String? accessKey;

  Attachment({
    required super.type,
    required this.id,
    required this.ownerId,
    this.accessKey,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  @override
  bool get canBeAttach => true;

  /// The method converts the current instance to a [PhotoAttachment]
  PhotoAttachment toPhoto() =>
      PhotoAttachment(id: id, ownerId: ownerId, accessKey: accessKey);

  @override
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);

  @override
  String toString() {
    final returnAccessKey = accessKey != null ? '_$accessKey' : '';

    return '${_$AttachmentTypeEnumMap[type]}${ownerId}_$id$returnAccessKey';
  }
}
