part of vk_library;

/// Interface for the [Messages.isMessagesFromGroupAllowed] method
class ReturnedMessagesIsMessagesFromGroupAllowed {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesIsMessagesFromGroupAllowed(this.object);

  /// If sending messages is allowed, the field contains `true`, otherwise - `false`
  bool get isAllowed => object["is_allowed"] == 1;
}
