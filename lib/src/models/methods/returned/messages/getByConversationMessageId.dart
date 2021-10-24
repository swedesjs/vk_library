part of vk_library;

/// The result interface of the [Messages.getByConversationMessageId] method
class ReturnedMessagesGetByConversationMessageId {
  /// The object that is used for the interface
  final Json object;

  const ReturnedMessagesGetByConversationMessageId(this.object);

  /// Number of results
  int get count => object["count"];

  /// Array with objects that [describe messages](https://vk.com/dev/objects/message)
  ///
  /// Returns an instance of the [MessageObject] class
  List<MessageObject> get items => (object["items"] as List)
      .cast<Json>()
      .map((e) => MessageObject(e))
      .toList();
}
