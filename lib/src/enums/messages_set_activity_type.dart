part of vk_library;

/// Enum for the [Messages.setActivity] method, accepting a `type` parameter.
enum MessagesSetActivityType {
  /// The user started typing.
  TYPING,

  /// The user records a voice message.
  AUDIOMESSAGE
}

const _messagesSetActivityType = <MessagesSetActivityType, String>{
  MessagesSetActivityType.TYPING: "typing",
  MessagesSetActivityType.AUDIOMESSAGE: "audiomessage"
};
