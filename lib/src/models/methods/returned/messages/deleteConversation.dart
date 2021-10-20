part of vk_library;

class ReturnedMessagesDeleteConversation {
  final Json object;

  const ReturnedMessagesDeleteConversation(this.object);

  int get lastDeletedId => object["last_deleted_id"];
}
