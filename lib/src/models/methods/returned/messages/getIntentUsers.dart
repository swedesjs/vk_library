part of vk_library;

/// Interface for the [Messages.getIntentUsers] method
class ReturnedMessagesGetIntentUsers {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetIntentUsers(this.object);

  /// Number of results.
  int get count => object["count"];

  /// An array of user IDs in the [items] ([int]) field.
  List<int> get items => object["items"];

  /// An array of user objects. (If `extended` was specified).
  List<ProfileObject>? get profiles {
    final List<Json>? profiles = object["profiles"];
    if (profiles != null) return profiles.map((e) => ProfileObject(e)).toList();
  }
}
