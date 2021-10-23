part of vk_library;

/// Interface for the `messages.getConversationMembers` method
class ReturnedMessagesGetConversationMembers {
  /// The object that is used for the interface
  final Json object;

  const ReturnedMessagesGetConversationMembers(this.object);

  /// The number of participants in the conversation.
  int get count => object["count"];

  /// Participants of the conversation. Array of objects
  // TODO: Create a class describing the participants in the conversation in this method
  List<Json> get items => object["items"];

  /// Array of objects [users](https://vk.com/dev/objects/user).
  List<ProfileObject> get profiles => (object["profiles"] as List)
      .cast<Json>()
      .map((e) => ProfileObject(e))
      .toList();

  /// Array of objects [communities](https://vk.com/dev/objects/group).
  List<GroupObject> get groups => (object["groups"] as List)
      .cast<Json>()
      .map((e) => GroupObject(e))
      .toList();
}
