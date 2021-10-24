part of vk_library;

/// Interface for the [Messages.getLongPollServer] method
class ReturnedMessagesGetLongPollServer {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetLongPollServer(this.object);

  /// Session secret key.
  String get key => object["key"];

  /// Server address.
  String get server => object["server"];

  /// The number of the last event, starting from which you want to receive data.
  int get ts => object["ts"];
}
