part of vk_library;

/// The class positions itself as the response of the `messages.deleteChatPhoto` method
class ReturnedMessagesDeleteChatPhoto {
  /// The object that is used for the interface
  final Json object;

  const ReturnedMessagesDeleteChatPhoto(this.object);

  /// Sent system message ID
  int get messageId => object["message_id"];

  /// [multi dialog object](https://vk.com/dev/objects/chat). Returns the [ChatObjects] class
  ChatObjects get chat => ChatObjects(object["chat"]);
}
