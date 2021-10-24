part of vk_library;

/// Interface specifying alert settings for a dialog.
class PushSettings {
  /// The object that is used for the interface
  final Json object;

  const PushSettings(this.object);

  /// Indicates whether the notification sound is enabled (1 - enabled, 0 - disabled).
  int get sound => object["sound"];

  /// Specifies how long chat alerts are disabled. -1 - disabled forever (indefinitely).
  int get disabledUntil => object["disabled_until"];
}

class MultiDialogueObject {
  /// The object that is used for the interface
  final Json object;

  const MultiDialogueObject(this.object);

  /// Conversation ID.
  int get id => object["id"];

  /// Dialogue type.
  String get type => object["type"];

  /// The name of the conversation.
  String get title => object["title"];

  /// The ID of the user who created the conversation.
  int get adminId => object["admin_id"];

  /// A list of the IDs of the participants in the conversation.
  // TODO: Implement a union for a sheet with intengers and user objects
  List<dynamic> get users => object["users"];

  /// Dialogue alert settings.
  PushSettings get pushSettings => PushSettings(object["push_settings"]);

  /// The URL of the chat cover image is 50 px wide (if available).
  String get photo_50 => object["photo_50"];

  /// Chat Cover Image URL 100 px wide (if available).
  String get photo_100 => object["photo_100"];

  /// Chat Cover Image URL 200 px wide (if available).
  String get photo_200 => object["photo_200"];

  /// A flag indicating that the user has left the conversation. Always contains `1`
  int get left => object["left"];

  /// A flag indicating that the user has been excluded from the conversation. Always contains `1`.
  int get kicked => object["kicked"];
}
