part of vk_library;

/// The class positions itself as the response of the [Messages.deleteConversation] method
class ReturnedMessagesDeleteConversation {
  /// The object that is used for the interface
  final Json object;

  const ReturnedMessagesDeleteConversation(this.object);

  /// The identifier of the last deleted message in the conversation.
  int get lastDeletedId => object["last_deleted_id"];
}
