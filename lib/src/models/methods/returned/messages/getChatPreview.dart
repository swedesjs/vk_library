part of vk_library;

/// Interface for the `messages.getChatPreview` method
class ReturnedMessagesGetChatPreview {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetChatPreview(this.object);

  /// Chat info.
  // TODO: Create a class for this object
  Json get preview => object["preview"];

  /// Array of objects [users](https://vk.com/dev/objects/user).
  // TODO: Write a class for a user object
  List<Json> get profiles => object["profiles"];

  /// Array of objects [communities](https://vk.com/dev/objects/group).
  /// TODO: Write an object describing the VK community
  List<Json> get groups => object["groups"];

  /// An array of objects describing e-mail.
  // TODO: Write a class describing emails with fields id ([int]) and address ([String])
  List<Json> get emails => object["emails"];
}
