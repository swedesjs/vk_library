part of '../models.dart';

const initialNumberPeerId = 2000000000;

PeerType getPeerType(int id) {
  if (id < initialNumberPeerId) {
    return PeerType.chat;
  } else if (id < 0) {
    return PeerType.group;
  } else {
    return PeerType.user;
  }
}

/// Object describing the message
///
/// https://dev.vk.com/reference/objects/message
@JsonSerializable()
class MessageModel extends AllAttachmentable {
  /// Message ID.
  final int id;

  /// Dispatch time.
  @JsonKey(fromJson: dateFromJson, name: 'date')
  final DateTime dispatchTime;

  /// Peer id.
  final int peerId;

  /// The type of conversation from which the message was sent
  PeerType get peerType => getPeerType(peerId);

  /// Is it a dialog with the user
  bool get isFromUser => peerType == PeerType.user;

  /// Is it a dialogue with a group
  bool get isFromGroup => peerType == PeerType.group;

  /// Has a chat message been sent
  bool get isChat => peerType == PeerType.chat;

  /// Chat ID (if peerType = [PeerType.chat])
  int? get chatId => isChat ? peerId - initialNumberPeerId : null;

  /// Sender ID.
  @JsonKey(name: 'from_id')
  final int senderId;

  /// Sender type.
  PeerType get senderType => getPeerType(senderId);

  /// Whether the user sent a message
  bool get isUser => senderType == PeerType.user;

  /// Whether the message was sent by a group
  bool get isGroup => senderType == PeerType.group;

  /// Message text.
  final String text;

  bool get hasText => text.isNotEmpty;

  /// The identifier used when sending the message. Returned for outgoing messages only.
  final int? randomId;

  /// Arbitrary parameter for working with [referral sources](https://dev.vk.com/api/community-messages/getting-started).
  final String? ref, refSource;

  /// Message type (0 - received, 1 - sent, not returned for forwarded messages).
  @JsonKey(name: 'out', fromJson: whetherNull)
  final bool? isOut;

  /// Is it hidden.
  final bool? isHidden;

  /// Message media attachments.
  @JsonKey(fromJson: transformAttachments)
  final List<Attachment> attachments;

  /// The message is marked as important.
  @JsonKey(name: 'important')
  final bool? isImportant;

  /// Location information.
  final MessageModelGeo? geo;

  /// Is geolocation information provided
  bool get hasGeo => geo != null;

  /// Service field for messages to bots (payload).
  final String? payload;
  final Map<String, dynamic>? keyboard;

  /// Array of forwarded messages (if any). The maximum number of elements is 100. The maximum nesting depth for forwarded messages is 45, the total maximum number in the chain, including nesting, is 500.
  @JsonKey(name: 'fwd_messages', fromJson: _toForwards)
  final MessageForwardsCollection forwards;

  /// Are there forwarded messages
  bool get hasForwards => forwards.isNotEmpty;

  static MessageForwardsCollection _toForwards(List<dynamic> array) =>
      MessageForwardsCollection(
        array.cast<Map<String, dynamic>>().map(MessageModel.fromJson),
      );

  /// The message in response to which the current one was sent.
  final MessageModel? replyMessage;

  /// Is there a reply to messages
  bool get hasReplyMessage => replyMessage != null;

  /// Service action information with chat.
  final MessageModelAction? action;

  /// For community posts only. Contains the ID of the user (community administrator) who sent this message.
  final int? adminAuthorId;

  /// A unique auto-incrementing number for all messages with this peer.
  final int conversationMessageId;

  /// This message has been truncated for a bot.
  final bool? isCropped;

  /// Number of participants.
  final int? membersCount;

  /// The date the message was updated.
  @JsonKey(fromJson: dateNullFromJson)
  final DateTime? updateTime;

  /// Whether the attached audio message has already been listened to by you.
  final bool? wasListened;

  /// The date the message was pinned.
  final int? pinnedAt;

  /// A string to match the user Notify and VKontakte. The data is copied at the moment the user responds to a message from Notify sent with the session_id parameter.
  final String? messageTag;

  /// Information about available client features.
  @JsonKey(ignore: true)
  late MessageModelClientInfo? clientInfo;

  MessageModel({
    required this.id,
    required this.dispatchTime,
    required this.peerId,
    required this.senderId,
    required this.text,
    this.randomId,
    this.ref,
    this.refSource,
    this.isOut,
    this.isHidden,
    required this.attachments,
    this.isImportant,
    this.geo,
    this.payload,
    this.keyboard,
    this.forwards = const MessageForwardsCollection(Iterable.empty()),
    this.replyMessage,
    this.action,
    this.adminAuthorId,
    required this.conversationMessageId,
    this.isCropped,
    this.membersCount,
    this.updateTime,
    this.wasListened,
    this.pinnedAt,
    this.messageTag,
  }) : super(
          attachments: attachments,
          forwards: forwards,
          replyMessage: replyMessage,
        );

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}

@JsonSerializable()
class MessageModelGeo {
  /// Place type.
  final String? type;

  /// Location coordinates.
  final MessageModelGeoCoordinates? coordinates;

  /// Location description (if included).
  final MessageModelGeoPlace? place;

  /// Information about whether the map is displayed.
  final int? showmap;

  MessageModelGeo({this.type, this.coordinates, this.place, this.showmap});

  factory MessageModelGeo.fromJson(Map<String, dynamic> json) =>
      _$MessageModelGeoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelGeoToJson(this);
}

@JsonSerializable()
class MessageModelGeoCoordinates {
  /// Geographical latitude.
  final num? latitude;

  /// Geographic longitude.
  final num? longitude;

  MessageModelGeoCoordinates({this.latitude, this.longitude});

  factory MessageModelGeoCoordinates.fromJson(Map<String, dynamic> json) =>
      _$MessageModelGeoCoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelGeoCoordinatesToJson(this);
}

@JsonSerializable()
class MessageModelGeoPlace {
  /// Place ID (if assigned).
  final int? id;

  /// Place name (if assigned).
  final String? title;

  /// Geographical latitude.
  final num? latitude;

  /// Geographic longitude.
  final num? longitude;

  /// Creation date (if assigned).
  final int? created;

  /// Icon image url.
  final String? icon;

  /// Country name.
  final String? country;

  /// City name.
  final String? city;

  MessageModelGeoPlace({
    this.id,
    this.title,
    this.latitude,
    this.longitude,
    this.created,
    this.icon,
    this.country,
    this.city,
  });

  factory MessageModelGeoPlace.fromJson(Map<String, dynamic> json) =>
      _$MessageModelGeoPlaceFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelGeoPlaceToJson(this);
}

@JsonSerializable()
class MessageModelAction {
  /// Action type.
  final MessageModelActionType? type;

  /// User ID (if > 0) or email (if < 0) who was invited or kicked out (for service messages with [type] = [MessageModelActionType.chatInviteUser] or [MessageModelActionType.chatKickUser]). ID of the user who pinned/unpinned the message for action = [MessageModelActionType.chatPinMessage] or [MessageModelActionType.chatUnpinMessage].
  final int? memberId;

  /// Title of the conversation (for service messages with [type] = [MessageModelActionType.chatCreate] or [MessageModelActionType.chatTitleUpdate]).
  final String? text;

  /// Email that was invited or kicked (for service messages with [type] = [MessageModelActionType.chatInviteUser] or [MessageModelActionType.chatKickUser] and negative [memberId]).
  final String? email;

  /// Chat cover image.
  final MessageModelActionPhoto? photo;

  MessageModelAction({
    this.type,
    this.memberId,
    this.text,
    this.email,
    this.photo,
  });

  factory MessageModelAction.fromJson(Map<String, dynamic> json) =>
      _$MessageModelActionFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelActionToJson(this);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum MessageModelActionType {
  /// Updated conversation photo.
  chatPhotoUpdate,

  /// Removed conversation photo.
  chatPhotoRemove,

  /// Conversation created.
  chatCreate,

  /// Updated conversation title.
  chatTitleUpdate,

  /// Invited user.
  chatInviteUser,

  /// The user is excluded.
  chatKickUser,

  /// Pinned message.
  chatPinMessage,

  /// Unpinned message.
  chatUnpinMessage,

  /// The user joined the conversation via a link.
  chatInviteUserByLink
}

@JsonSerializable()
class MessageModelActionPhoto {
  /// Image URL 50x50px.
  final String? photo_50;

  /// Image URL 100x100px.
  final String? photo_100;

  /// Image URL 200x200px.
  final String? photo_200;

  MessageModelActionPhoto({this.photo_50, this.photo_100, this.photo_200});

  factory MessageModelActionPhoto.fromJson(Map<String, dynamic> json) =>
      _$MessageModelActionPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelActionPhotoToJson(this);
}

enum PeerType { user, chat, group }

/// Information about available client features.
@JsonSerializable()
class MessageModelClientInfo {
  /// An array of buttons that the client supports. See [Keyboard](https://dev.vk.com/api/bots/development/keyboard#%D0%A1%D1%82%D1%80%D1%83%D0%BA%D1%82%D1%83%D1%80%D0%B0%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85) section for possible values;
  final List<String> buttonActions;

  /// Is the bot keyboard supported by the client.
  final bool keyboard;

  /// Is the inline keyboard of bots supported by the client.
  final bool inlineKeyboard;

  /// Are [carousels](https://dev.vk.com/api/bots/development/messages) supported by the client.
  final bool carousel;

  /// The [ID](https://dev.vk.com/api/api-requests) of the language being used.
  final int langId;

  /// Returns one element of the [Language] enum at index [langId]
  Language get language => Language.values[langId];

  MessageModelClientInfo({
    required this.buttonActions,
    required this.keyboard,
    required this.inlineKeyboard,
    required this.carousel,
    required this.langId,
  });

  factory MessageModelClientInfo.fromJson(Map<String, dynamic> json) =>
      _$MessageModelClientInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelClientInfoToJson(this);
}
