part of vk_library;

/// Interface for the [Messages.search] method
class ReturnedMessagesSearch {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesSearch(this.object);

  /// Number of results.
  int get count => object["count"];

  /// An array of objects describing [private messages](https://vk.com/dev/objects/message) or [conversations](https://vk.com/dev/objects/conversation)
  // TODO: Think about the implementation of the interface.
  List<Json> get items => object["items"];
}
