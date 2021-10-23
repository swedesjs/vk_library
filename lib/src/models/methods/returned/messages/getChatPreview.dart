part of vk_library;

/// Interface for the [ReturnedMessagesGetChatPreview.preview] field
class MessagesGetChatPreview {
  /// The object that is used for the interface
  final Json object;
  const MessagesGetChatPreview(this.object);

  /// Chat creator id.
  int get adminId => object["admin_id"];

  /// Array of chat participants ids.
  List<int> get members => object["members"];

  /// The name of the chat.
  String get title => object["title"];

  /// Chat cover.
  PhotoObject get photo => PhotoObject(object["photo"]);

  /// Chat ID for the current user.
  int get localId => object["local_id"];
}

/// Interface for the [ReturnedMessagesGetChatPreview.emails] field
class MessagesGetChatEmails {
  /// The object that is used for the interface
  final Json object;
  const MessagesGetChatEmails(this.object);

  /// E-mail identifier.
  int get id => object["id"];

  /// Email address.
  String get address => object["address"];
}

/// Interface for the `messages.getChatPreview` method
class ReturnedMessagesGetChatPreview {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetChatPreview(this.object);

  /// Chat info.
  MessagesGetChatPreview get preview =>
      MessagesGetChatPreview(object["preview"]);

  /// Array of objects [users](https://vk.com/dev/objects/user).
  List<ProfileObject> get profiles => (object["profiles"] as List)
      .cast<Json>()
      .map((e) => ProfileObject(e))
      .toList();

  /// Array of objects [communities](https://vk.com/dev/objects/group).
  List<GroupObject> get groups => (object["groups"] as List)
      .cast<Json>()
      .map((e) => GroupObject(e))
      .toList();

  /// An array of objects describing e-mail.
  List<MessagesGetChatEmails> get emails => (object["emails"] as List)
      .cast<Json>()
      .map((e) => MessagesGetChatEmails(e))
      .toList();
}
