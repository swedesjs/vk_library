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
  // TODO: Write a class for a user object
  List<Json> get profiles => object["profiles"];

  /// Array of objects [communities](https://vk.com/dev/objects/group).
  // TODO: Write an object describing the VK community
  List<Json> get groups => object["groups"];
}
