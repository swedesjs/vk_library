import 'package:json_annotation/json_annotation.dart';

import '../../models.dart';
import '../converters.dart';

part 'attachment.g.dart';

part 'audio.dart';

part 'audio_message.dart';

part 'doc.dart';

part 'general_classes.dart';

part 'gifts.dart';

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
abstract class Attachment {
  final AttachmentType type;

  Attachment({required this.type});

  Map<String, dynamic> toJson() => _$AttachmentToJson(this);

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
  poll
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
  }) : super(type: type) {
    const supportedTypes = <AttachmentType>[
      AttachmentType.doc,
      AttachmentType.photo,
      AttachmentType.video,
      AttachmentType.audioMessage,
      AttachmentType.market,
      AttachmentType.wall,
      AttachmentType.marketAlbum,
      AttachmentType.audio,
      AttachmentType.wallReply
    ];

    if (!supportedTypes.contains(type)) {
      throw UnsupportedError(
        'The "${type.name}" type is not supported, supported types are: ${supportedTypes.map((e) => e.name).join(', ')}',
      );
    }
  }

  factory AttachmentDefault.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDefaultFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AttachmentDefaultToJson(this);

  /// The method converts the current instance to a [PhotoAttachment]
  PhotoAttachment toPhoto() =>
      PhotoAttachment(id: id, ownerId: ownerId, accessKey: accessKey);

  /// Returns the format string `{ownerId}_{id}{?'_'}{?accessKey}`
  String get identifiers => getValue(whetherAccessKey: true);

  /// Returns the format string `{type}{ownerId}_{id}{?'_'}{?accessKey}`
  String get attachment => _$AttachmentTypeEnumMap[type]! + identifiers;

  /// If [whetherAccessKey] = true and [accessKey] != null,
  /// then returns a string format like `{ownerId}_{id}_{accessKey}`, otherwise returns `{ownerId}_{id}`
  String getValue({bool whetherAccessKey = false}) {
    final returnAccessKey =
        whetherAccessKey && accessKey != null ? '_$accessKey' : '';

    return '${ownerId}_$id$returnAccessKey';
  }

  @override
  String toString() => '$runtimeType[$identifiers]';
}

class AttachmentConverter
    extends JsonConverter<Attachment, Map<String, dynamic>> {
  const AttachmentConverter();

  /// Converts the map to an [Attachment] instance
  @override
  Attachment fromJson(Map<String, dynamic> json) {
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
    }
  }

  @override
  Map<String, dynamic> toJson(Attachment object) => object.toJson();
}
