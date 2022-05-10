part of '../models.dart';

const _$AttachmentTypeEnumMap = {
  AttachmentType.photo: 'photo',
  AttachmentType.video: 'video',
  AttachmentType.audio: 'audio',
  AttachmentType.doc: 'doc',
  AttachmentType.link: 'link',
  AttachmentType.market: 'market',
  AttachmentType.marketAlbum: 'market_album',
  AttachmentType.wall: 'wall',
  AttachmentType.wallReply: 'wall_reply',
  AttachmentType.sticker: 'sticker',
  AttachmentType.gift: 'gift',
  AttachmentType.audioMessage: 'audio_message',
};

@JsonSerializable(createFactory: false)
class TransformMessage {
  final int type;
  final int messageId;
  final int flags;
  final int peerId;
  final int timestamp;
  final String text;
  final TransformMessageAdditional additional;
  final Map<String, dynamic> attachments;
  final int randomId;
  final int conversationMsgId;
  final int updateTimestamp;

  TransformMessage({
    required this.type,
    required this.messageId,
    required this.flags,
    required this.peerId,
    required this.timestamp,
    required this.text,
    required this.additional,
    required this.attachments,
    required this.randomId,
    required this.conversationMsgId,
    required this.updateTimestamp,
  });

  factory TransformMessage.fromJson(List<dynamic> json) {
    return TransformMessage(
      type: json[0] as int,
      messageId: json[1] as int,
      flags: json[2] as int,
      peerId: json[3] as int,
      timestamp: json[4] as int,
      text: json[5] as String,
      additional:
          TransformMessageAdditional.fromJson(json[6] as Map<String, dynamic>),
      attachments: json[7] as Map<String, dynamic>,
      randomId: json[8] as int,
      conversationMsgId: json[9] as int,
      updateTimestamp: json[10] as int,
    );
  }

  Map<String, dynamic> toJson() => _$TransformMessageToJson(this);

  static MessageModel _zeroMessageModel([int conversationMsgId = 0]) {
    final zeroDateTime = DateTime.fromMillisecondsSinceEpoch(0);

    return MessageModel(
      id: 0,
      conversationMessageId: conversationMsgId,
      dispatchTime: zeroDateTime,
      updateTime: zeroDateTime,
      peerId: 0,
      senderId: 0,
      isOut: false,
      text: '',
      attachments: [],
      randomId: 0,
      isImportant: false,
    );
  }

  /// Converts the format string `{owner_Id}_{id}` to an instance of the [Attachment] class
  static Attachment idToAttachment(String key, AttachmentType type) {
    final delimiter = key.indexOf('_');

    return Attachment(
      type: type,
      id: int.parse(key.substring(delimiter + 1)),
      ownerId: int.parse(key.substring(0, delimiter)),
    );
  }

  static AbstractAttachment handler(
    Map<String, dynamic> map,
    String key,
    AttachmentType type,
    int index,
  ) {
    switch (type) {
      case AttachmentType.sticker:
        return StickerAttachment(
          stickerId: int.parse(map[key]),
          productId: int.parse(map['${key}_product_id']),
        );
      case AttachmentType.link:
        final String? photo = map['${key}_photo'];

        return LinkAttachment(
          url: map['${key}_url'],
          title: map['${key}_title'],
          description: map['${key}_desc'],
          photo: photo == null
              ? null
              : idToAttachment(photo, AttachmentType.photo).toPhoto(),
        );
      case AttachmentType.doc:
        final type = map['${key}_kind'];

        if (type == 'audiomsg') {
          final object =
              jsonDecode(map['attachments'])[index - 1]['audio_message'];

          return AudioMessageAttachment.fromJson(
            object
              ..['id'] = int.parse(object['id'])
              ..['owner_id'] = int.parse(object['owner_id']),
          );
        }

        continue def;
      case AttachmentType.gift:
        return GiftAttachment(id: int.parse(map[key]));
      def:
      default:
        return idToAttachment(map[key], type);
    }
  }

  MessageModel transform() {
    final attachmentTransform = <AbstractAttachment>[];

    for (var i = 1, key = 'attach1';
        attachments[key] != null;
        i++, key = 'attach$i') {
      final type = attachments['${key}_type'];

      if (type == 'money_request') break;
      final enumType = $enumDecode(_$AttachmentTypeEnumMap, type);

      attachmentTransform.add(handler(attachments, key, enumType, i));
    }

    final String? reply = attachments['reply'];

    return MessageModel(
      id: messageId,
      conversationMessageId: conversationMsgId,
      peerId: peerId,
      senderId: additional.from == null ? peerId : int.parse(additional.from!),
      dispatchTime: const DateTimeConverter().fromJson(timestamp),
      updateTime: const DateTimeConverter().fromJson(updateTimestamp),
      text: text,
      randomId: randomId,
      isOut: flags & 2 != 0,
      geo: attachments['geo'] == null ? null : MessageModelGeo(),
      attachments: attachmentTransform,
      payload: additional.payload,
      replyMessage: reply == null
          ? null
          : _zeroMessageModel(jsonDecode(reply)['conversation_message_id']),
      forwards: MessageForwardsCollection(
        attachments['fwd'] == null
            ? const Iterable.empty()
            : [_zeroMessageModel()],
      ),
      isImportant: false,
    );
  }
}

@JsonSerializable()
class TransformMessageAdditional {
  final String? title;
  final String? from;
  final String? payload;

  TransformMessageAdditional({this.title, this.from, this.payload});

  factory TransformMessageAdditional.fromJson(Map<String, dynamic> json) =>
      _$TransformMessageAdditionalFromJson(json);

  Map<String, dynamic> toJson() => _$TransformMessageAdditionalToJson(this);
}
