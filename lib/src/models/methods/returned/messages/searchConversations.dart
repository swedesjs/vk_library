part of vk_library;

/// Interface for the [Messages.searchConversations] method
class ReturnedMessagesSearchConversations {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesSearchConversations(this.object);

  /// The total number of results.
  int get count => object["count"];

  /// Array of [dialogues](https://vk.com/dev/objects/conversation).
  // TODO: Implement dialog object - https://vk.com/dev/objects/conversation
  List<Json> get items => object["items"];
}
