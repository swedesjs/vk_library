part of vk_library;

/// Interface for the [Messages.getHistory] method
class ReturnedMessagesGetHistory {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetHistory(this.object);

  /// The total number of existing objects matching the request. Please note that this value may not coincide with the number of items in `items`, for example, when you want to get only a part of the objects (using `limit`, `offset`, `count` in your request) or the maximum number of objects in the result is limited by the method itself.
  int get count => object["count"];

  /// An array of [messages](https://vk.com/dev/objects/message) objects.
  List<MessageObject> get items => (object["items"] as List)
      .cast<Json>()
      .map((e) => MessageObject(e))
      .toList();

  /// The number of missed messages.
  int? get skipped => object["skipped"];
}
