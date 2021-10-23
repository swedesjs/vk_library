part of vk_library;

/// Interface for the [Messages.getLastActivity] method
class ReturnedMessagesGetLastActivity {
  /// The object that is used for the interface
  final Json object;

  const ReturnedMessagesGetLastActivity(this.object);

  /// User's current status (true - online, false - offline).
  bool? get online => object["online"] == 1;

  /// Date of last user activity in `unixtime` format.
  int get time => object["time"];
}
