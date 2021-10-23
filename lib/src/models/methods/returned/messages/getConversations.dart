part of vk_library;

/// The interface of the items field of the class [ReturnedMessagesGetConversations.items]
class MessagesGetConversationsItems {
  /// The object that is used for the interface
  final Json object;

  const MessagesGetConversationsItems(this.object);

  /// Object [conversation](https://vk.com/dev/objects/conversation).
  ///
  /// Returns an instance of the [ChatObjects] class
  ChatObjects get conversation => ChatObjects(object["conversation"]);

  /// An object describing the [last message in the conversation](https://vk.com/dev/objects/message).
  ///
  /// Returns an instance of the [MessageObject] class
  MessageObject get lastMessage => MessageObject(object["last_message"]);
}

/// Interface for the `messages.getConversations` method
class ReturnedMessagesGetConversations {
  /// The object that is used for the interface
  final Json object;

  const ReturnedMessagesGetConversations(this.object);

  /// Number of results.
  int get count => object["count"];

  /// Conversations. An array of objects.
  ///
  /// Returns an instance of the [MessagesGetConversationsItems] class
  List<MessagesGetConversationsItems> get items => (object["items"] as List)
      .cast<Json>()
      .map((e) => MessagesGetConversationsItems(e))
      .toList();

  /// The number of unread conversations.
  int get unreadCount => object["unread_count"];

  /// Array of objects [users](https://vk.com/dev/objects/user).
  List<ProfileObject> get profiles => (object["profiles"] as List)
      .cast<Json>()
      .map((e) => ProfileObject(e))
      .toList();

  /// Array of objects [communities](https://vk.com/dev/objects/group).
  // TODO: Write an object describing the VK community
  List<Json> get groups => object["groups"];
}
