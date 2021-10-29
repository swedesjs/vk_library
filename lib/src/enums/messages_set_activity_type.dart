part of vk_library;

/// Enum for the [Messages.setActivity] method, accepting a `type` parameter.
enum MessagesSetActivityType {
  /// The user started typing.
  TYPING,

  /// The user records a voice message.
  AUDIOMESSAGE
}

extension _MessagesSetActivityType on MessagesSetActivityType {
  String stringValue() => _stringValue(this);
}
