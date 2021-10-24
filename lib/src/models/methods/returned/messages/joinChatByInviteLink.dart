part of vk_library;

/// Interface for the [Messages.joinChatByInviteLink] method
class ReturnedMessagesJoinChatByInviteLink {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesJoinChatByInviteLink(this.object);

  /// Chat ID.
  int get chatId => object["chat_id"];
}
