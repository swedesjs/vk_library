part of vk_library;

/// Interface for the `messages.getChat` method
class ReturnedMessagesGetChat extends ChatObjects {
  /// The object that is used for the interface
  @override
  final Json object;

  const ReturnedMessagesGetChat(this.object) : super(object);
}
