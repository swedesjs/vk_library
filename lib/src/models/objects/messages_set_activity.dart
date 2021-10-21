part of vk_library;

/// Class with type enumerations for the `type` parameter in the `messages.setActivity` method
///
/// *Example*:
/// ```dart
/// await vk.api.messages.setActivity(type: MessagesSetActivityType.AUDIO_MESSAGE);
/// ```
class MessagesSetActivityType {
  /// The user started typing.
  static const TYPING = MessagesSetActivityType("typing");

  /// The user records a voice message.
  static const AUDIO_MESSAGE = MessagesSetActivityType("audiomessage");

  /// The original type that is sent to the parameter `messages.setActivity`
  final String type;

  /// It would be desirable not to create an instance, there are already static fields [TYPING] and [AUDIO_MESSAGE]
  const MessagesSetActivityType(this.type);

  @override
  String toString() => type;
}
