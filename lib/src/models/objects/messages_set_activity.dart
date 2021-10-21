part of vk_library;

class MessagesSetActivityType {
  static const TYPING = MessagesSetActivityType("typing");
  static const AUDIO_MESSAGE = MessagesSetActivityType("audiomessage");

  final String type;
  const MessagesSetActivityType(this.type);

  @override
  String toString() => type;
}
