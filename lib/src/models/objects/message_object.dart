part of vk_library;

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
  // TODO: Write class
  dynamic get geo => object["geo"];

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
  Json get reply_message => object["reply_message"];

  /// Service action information with chat.
  // TODO: Write class
  Json get action => object["action"];

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
