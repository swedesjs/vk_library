part of vk_library;

/// The interface contains information about the pinned message in the conversation.
class PinnedMessageObject {
  /// The object that is used for the interface
  final Json object;
  const PinnedMessageObject(this.object);

  /// The identifier of the message. Contains `0` if the current user does not have this message in history (for example, it was sent to multichat before the user was invited).
  int get id => object["id"];

  /// The time the message was sent in `Unixtime`.
  int get date => object["date"];

  /// Sender ID.
  int get fromId => object["from_id"];

  /// Media attachments messages (photos, links, etc.). The description of the attachments array is located on the [separate page](https://vk.com/dev/objects/attachments_m).
  String get attachments => object["attachments"];

  /// Location information.
  MessageObjectGeo get geo => MessageObjectGeo(object["geo"]);

  /// An array of forwarded messages (if any). The maximum number of items is `100`. The maximum nesting depth for forwarded messages is `45`, the total maximum number in the chain, including nesting, is `500`.
  // TODO: Implement an interface for this field
  List<Json> get forwardMessages => object["fwd_messages"];
}
