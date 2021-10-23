part of vk_library;

/// Interface for the [Messages.getConversationsById] method
class RetunedMessagesGetConversationsById {
  /// The object that is used for the interface
  final Json object;
  const RetunedMessagesGetConversationsById(this.object);

  /// The total number of results.
  int get count => object["count"];

  /// An array of [ChatObjects] interfaces.
  List<ChatObjects> get items => (object["items"] as List)
      .cast<Json>()
      .map((e) => ChatObjects(e))
      .toList();
}
