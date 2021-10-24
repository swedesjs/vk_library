part of vk_library;

/// Interface for the [Messages.setChatPhoto] method
class ReturnedMessagesSetChatPhoto {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesSetChatPhoto(this.object);

  /// The identifier of the sent system message.
  int get messageId => object["message_id"];

  /// [multi-dialog object](https://vk.com/dev/objects/chat).
  ///
  /// Returns an instance of [MultiDialogueObject].
  MultiDialogueObject get chat => MultiDialogueObject(object["chat"]);
}
