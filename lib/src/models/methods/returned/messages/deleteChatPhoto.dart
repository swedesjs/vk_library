part of vk_library;

class ReturnedMessagesDeleteChatPhoto {
  final Json object;

  const ReturnedMessagesDeleteChatPhoto(this.object);

  int get messageId => object["message_id"];

  ChatObjects get chat => ChatObjects(object["chat"]);
}
