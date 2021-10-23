part of vk_library;

/// Interface for the [Messages.getInviteLink] method
class ReturnedMessagesGetInviteLink {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetInviteLink(this.object);

  /// Link to invite to the conversation.
  String get link => object["link"];
}
