part of vk_library;

class ReturnedDeleteChatPhoto {
  final Map<String, dynamic> object;

  const ReturnedDeleteChatPhoto(this.object);

  int get messageId => object["message_id"];

  ChatObjects get chat => ChatObjects(object["chat"]);
}
