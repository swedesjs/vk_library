part of vk_library;

/// An interface for the [MessageObject.geo] field.
class MessageObjectGeo {
  /// The object that is used for the interface
  final Json object;
  const MessageObjectGeo(this.object);

  /// Place type.
  String get type => object["type"];

  /// The coordinates of the place.
  ///
  /// Returns an array with instances of the [MessageObjectGeoCoordinates] class
  List<MessageObjectGeoCoordinates> get coordinates =>
      (object["coordinates"] as List)
          .cast<Json>()
          .map((e) => MessageObjectGeoCoordinates(e))
          .toList();

  /// Description of the place (if added).
  ///
  /// Returns an instance of the [MessageObjectGeoPlace] class
  MessageObjectGeoPlace? get place {
    final place = object["place"];
    if (place != null) return MessageObjectGeoPlace(place);
  }

  /// Information about whether the map is displayed.
  int get showmap => object["showmap"];
}

/// An interface for the [MessageObjectGeo.coordinates] field.
class MessageObjectGeoCoordinates {
  /// The object that is used for the interface
  final Json object;
  const MessageObjectGeoCoordinates(this.object);

  /// Geographic latitude.
  double get latitude => object["latitude"];

  /// Geographic longitude.
  double get longitude => object["longitude"];
}

/// An interface for the [MessageObjectGeo.place] field.
class MessageObjectGeoPlace {
  /// The object that is used for the interface
  final Json object;
  const MessageObjectGeoPlace(this.object);

  /// Seat ID (if assigned).
  int? get id => object["id"];

  /// Seat name (if assigned).
  String? get title => object["title"];

  /// Geographic latitude.
  num get latitude => object["latitude"];

  /// Geographic longitude.
  num get longitude => object["longitude"];

  /// Creation date (if assigned).
  int? get created => object["created"];

  /// Icon image URL.
  String get icon => object["icon"];

  /// The name of the country.
  String get country => object["country"];

  /// City name.
  String get city => object["city"];
}

/// Action type.
enum MessageTypeAction {
  /// Photo of the conversation has been updated.
  CHAT_PHOTO_UPDATE,

  /// The photo of the conversation has been removed.
  CHAT_PHOTO_REMOVE,

  /// Conversation created.
  CHAT_CREATE,

  /// The title of the conversation has been updated.
  CHAT_TITLE_UPDATE,

  /// User invited.
  CHAT_INVITE_USER,

  /// User excluded.
  CHAT_KICK_USER,

  /// The message is pinned.
  CHAT_PIN_MESSAGE,

  /// The message has been detached.
  CHAT_UNPIN_MESSAGE,

  /// The user joined the conversation using a link.
  CHAT_INVITE_USER_BY_LINK,
}

/// An interface for the [MessageObject.action] field
class MessageObjectAction {
  /// The object that is used for the interface
  final Json object;
  const MessageObjectAction(this.object);

  /// Action type.
  MessageTypeAction? get type {
    switch (object["type"]) {
      case "chat_photo_update":
        return MessageTypeAction.CHAT_PHOTO_UPDATE;
      case "chat_photo_remove":
        return MessageTypeAction.CHAT_PHOTO_REMOVE;
      case "chat_create":
        return MessageTypeAction.CHAT_CREATE;
      case "chat_title_update":
        return MessageTypeAction.CHAT_TITLE_UPDATE;
      case "chat_invite_user":
        return MessageTypeAction.CHAT_INVITE_USER;
      case "chat_kick_user":
        return MessageTypeAction.CHAT_KICK_USER;
      case "chat_pin_message":
        return MessageTypeAction.CHAT_PIN_MESSAGE;
      case "chat_unpin_message":
        return MessageTypeAction.CHAT_UNPIN_MESSAGE;
      case "chat_invite_user_by_link":
        return MessageTypeAction.CHAT_INVITE_USER_BY_LINK;
    }
  }

  /// User ID (if > 0) or email (if < 0) who was invited or excluded (for service messages with [type] = [MessageTypeAction.CHAT_INVITE_USER] or [MessageTypeAction.CHAT_KICK_USER]).
  ///
  /// The ID of the user who pinned / unpinned the message for `action` = [MessageTypeAction.CHAT_PIN_MESSAGE] or [MessageTypeAction.CHAT_UNPIN_MESSAGE].
  int? get memberId => object["member_id"];

  /// The name of the conversation (for service messages with [type] = [MessageTypeAction.CHAT_CREATE] or [MessageTypeAction.CHAT_TITLE_UPDATE]).
  String? get text => object["text"];

  /// Email that was invited or excluded (for service messages with [type] = [MessageTypeAction.CHAT_INVITE_USER] or [MessageTypeAction.CHAT_KICK_USER] and negative [memberId]).
  String? get email => object["email"];

  /// Chat cover image.
  PhotoSizesObject get photo => PhotoSizesObject(object["photo"]);
}

/// Private message interface
class MessageObject {
  /// The object that is used for the interface
  final Json object;
  const MessageObject(this.object);

  /// The identifier of the message.
  int get id => object["id"];

  /// Unixtime dispatch time.
  int get date => object["date"];

  /// Destination identifier.
  int get peerId => object["peer_id"];

  /// Sender ID.
  int get fromId => object["from_id"];

  /// Message text.
  String get text => object["text"];

  /// The identifier used when sending the message. Returned only for outgoing messages.
  int? get randomId => object["random_id"];

  /// An arbitrary parameter for working with [`referral sources`](https://vk.com/dev/bizmessages_doc?f=2.6.%20%D0%9F%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B0%20%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%BE%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%B0%D1%80%D0%B0%D0%BC%D0%B5%D1%82%D1%80%D0%B0%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%20vk.me).
  String get ref => object["ref"];

  /// An arbitrary parameter for working with [`referral sources`](https://vk.com/dev/bizmessages_doc?f=2.6.%20%D0%9F%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B0%20%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%BE%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%B0%D1%80%D0%B0%D0%BC%D0%B5%D1%82%D1%80%D0%B0%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%20vk.me).
  String get refSource => object["ref_source"];

  /// Media attachments messages (photos, links, etc.). The description of the `attachments` array is located on [`separate page`](https://vk.com/dev/objects/attachments_m).
  // TODO: Write class
  List<Json> get attachments => object["attachments"];

  /// true if the message is marked important.
  bool get important => object["important"];

  /// Location information.
  MessageObjectGeo? get geo {
    final geo = object["geo"];
    if (geo != null) return MessageObjectGeo(geo);
  }

  /// Service field for messages to bots (payload).
  String get payload => object["payload"];

  /// [Keyboard object](https://vk.com/dev/bots_docs_3?f=4.+%D0%9A%D0%BB%D0%B0%D0%B2%D0%B8%D0%B0%D1%82%D1%83%D1%80%D1%8B+%D0%B4%D0%BB%D1%8F+%D0%B1%D0%BE%D1%82%D0%BE%D0%B2) for bots.
  // TODO: Write class
  Json get keyboard => object["keyboard"];

  /// An array of forwarded messages (if any). The maximum number of elements is `100`. The maximum nesting depth for forwarded messages is `45`, the total maximum number in the chain, including nesting, is `500`.
  // TODO: Write class
  List<dynamic> get forwardMessages => object["fwd_messages"];

  /// The message in response to which the current one was sent.
  // TODO: Write class
  Json? get replyMessage => object["reply_message"];

  /// Service action information with chat.
  MessageObjectAction get action => MessageObjectAction(object["action"]);

  /// For community posts only. Contains the identifier of the user (community administrator) who sent this message.
  int get adminAuthorId => object["admin_author_id"];

  /// A unique auto-incrementing number for all messages with this peer.
  int get conversationMessageId => object["conversation_message_id"];

  /// This message has been truncated for the bot.
  bool get isCropped => object["is_cropped"];

  /// Number of participants.
  int get membersCount => object["members_count"];

  /// The date the message was updated in Unixtime.
  int get updateTime => object["update_time"];

  /// Whether the attached audio message has already been listened to by you.
  bool get wasListened => object["was_listened"];

  /// The date the message was pinned in Unixtime.
  int get pinnedAt => object["pinned_at"];

  /// A string for matching the Notify user and VKontakte. The data is copied at the time the user responds to a message from Notify sent with the session_id parameter. More about Notify: https://notify.mail.ru/
  String get messageTag => object["message_tag"];
}
