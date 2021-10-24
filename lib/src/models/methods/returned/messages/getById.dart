part of vk_library;

/// Interface for the [Messages.getById] method
class ReturnedMessagesGetById
    extends ReturnedMessagesGetByConversationMessageId {
  /// The object that is used for the interface
  @override
  final Json object;

  const ReturnedMessagesGetById(this.object) : super(object);
}
