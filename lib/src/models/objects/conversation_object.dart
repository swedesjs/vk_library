part of vk_library;

/// The interface describes a conversation with a user, community, or group chat.
class ConversationObject {
  /// The object that is used for the interface
  final Json object;
  const ConversationObject(this.object);

  /// Information about the interlocutor.
  ConversationObjectPeer get peer => ConversationObjectPeer(object["peer"]);

  /// ID of the last read incoming message.
  int get inRead => object["in_read"];

  /// ID of the last read outgoing message.
  int get outRead => object["out_read"];

  /// The number of unread messages.
  int get unreadCount => object["unread_count"];

  /// `true` if the conversation is marked as important (community posts only).
  bool get important => object["important"];

  /// `true` if the conversation is marked unanswered (community posts only).
  bool get unanswered => object["unanswered"];

  /// Push notification settings.
  ConversationObjectPushSettings get pushSettings =>
      ConversationObjectPushSettings(object["push_settings"]);

  /// Information about whether the user can write to the dialog.
  ConversationObjectCanWrite get canWrite =>
      ConversationObjectCanWrite(object["can_write"]);

  /// Chat settings.
  ConversationObjectChatSettings get chatSettings =>
      ConversationObjectChatSettings(object["chat_settings"]);
}

/// Interface for the [ConversationObject.peer] field
class ConversationObjectPeer {
  /// The object that is used for the interface
  final Json object;
  const ConversationObjectPeer(this.object);

  /// Destination identifier.
  int get id => object["id"];

  /// Type of. Returns enum [ConversationObjectPeerType]
  ConversationObjectPeerType? get type {
    switch (object["type"]) {
      case "user":
        return ConversationObjectPeerType.USER;
      case "chat":
        return ConversationObjectPeerType.CHAT;
      case "group":
        return ConversationObjectPeerType.GROUP;
      case "email":
        return ConversationObjectPeerType.EMAIL;
    }
  }

  /// Local destination identifier. For chats - `id` - 2,000,000,000, for communities - `-id`, for e-mail - - (`id` + 2,000,000,000).
  int get localId => object["local_id"];
}

/// Enum for the field [ConversationObjectPeer.type]
enum ConversationObjectPeerType {
  /// User.
  USER,

  /// Chat.
  CHAT,

  /// Group.
  GROUP,

  /// Email.
  EMAIL
}

/// Interface for the [ConversationObject.pushSettings] field
class ConversationObjectPushSettings {
  /// The object that is used for the interface
  final Json object;

  const ConversationObjectPushSettings(this.object);

  /// Timestamp before which alerts are disabled.
  int get disabledUntil => object["disabled_until"];

  /// Dispatched if notifications are permanently disabled, contains `true`.
  bool get disabledForever => object["disabled_forever"];

  /// Dispatched if notifications are muted, contains `true`.
  bool get noSound => object["no_sound"];
}

/// Interface for the [ConversationObject.canWrite] field
class ConversationObjectCanWrite {
  /// The object that is used for the interface
  final Json object;
  const ConversationObjectCanWrite(this.object);

  /// `true` if the user can write to the dialog.
  bool get allowed => object["allowed"];

  /// Error code for [allowed] = `false`.
  ///
  /// Will return [ConversationObjectCanWriteReason] enum.
  ConversationObjectCanWriteReason? get reason {
    switch (object["reason"]) {
      case 18:
        return ConversationObjectCanWriteReason.EIGHTEEN;
      case 900:
        return ConversationObjectCanWriteReason.NINE_HUNDRED;
      case 901:
        return ConversationObjectCanWriteReason.NINE_HUNDRED_AND_ONE;
      case 902:
        return ConversationObjectCanWriteReason.NINE_HUNDRED_AND_TWO;
      case 915:
        return ConversationObjectCanWriteReason.NINE_HUNDRED_AND_FIFTEEN;
      case 916:
        return ConversationObjectCanWriteReason.NINE_HUNDRED_AND_SIXTEEN;
      case 917:
        return ConversationObjectCanWriteReason.NINE_HUNDRED_AND_SEVENTEEN;
      case 918:
        return ConversationObjectCanWriteReason.NINE_HUNDRED_AND_EIGTEEN;
      case 203:
        return ConversationObjectCanWriteReason.TWO_HUNDRED_AND_THREE;
    }
  }
}

/// Enum for the field [ConversationObjectCanWrite.reason]
enum ConversationObjectCanWriteReason {
  /// The user is blocked or deleted.
  EIGHTEEN,

  /// You cannot send a message to a user who is on the blacklist.
  NINE_HUNDRED,

  /// The user has banned messages from the community.
  NINE_HUNDRED_AND_ONE,

  /// The user has forbidden to send him messages using the privacy settings.
  NINE_HUNDRED_AND_TWO,

  /// Messages are disabled in the community.
  NINE_HUNDRED_AND_FIFTEEN,

  /// The community has blocked messages.
  NINE_HUNDRED_AND_SIXTEEN,

  /// Chat access denied.
  NINE_HUNDRED_AND_SEVENTEEN,

  /// Access to e-mail is denied.
  NINE_HUNDRED_AND_EIGTEEN,

  /// Community access denied.
  TWO_HUNDRED_AND_THREE,
}

/// Interface for the [ConversationObject.chatSettings] field
class ConversationObjectChatSettings {
  /// The object that is used for the interface
  final Json object;

  const ConversationObjectChatSettings(this.object);

  /// The number of participants.
  int get membersCount => object["members_count"];

  /// The name of the conversation.
  String get title => object["title"];

  /// The [pinned post](https://vk.com/dev/objects/pinned_message) object, if any.
  PinnedMessageObject? get pinnedMessage {
    final value = object["pinned_message"];
    if (value != null) return PinnedMessageObject(value);
  }

  /// Current user status.
  ConversationObjectChatSettingsState? get state {
    switch (object["state"]) {
      case "in":
        return ConversationObjectChatSettingsState.IN;
      case "kicked":
        return ConversationObjectChatSettingsState.KICKED;
      case "left":
        return ConversationObjectChatSettingsState.LEFT;
    }
  }

  /// Chat cover image.
  PhotoSizesObject get photo => PhotoSizesObject(object["photo"]);

  /// The IDs of the last users who posted to the chat.
  List<int> get activeIds => object["active_ids"];

  /// Information about whether the conversation is a community channel.
  bool get isGroupChannel => object["is_group_channel"];
}

/// Enum for the field [ConversationObjectChatSettings.state]
enum ConversationObjectChatSettingsState {
  /// Is in the chat.
  IN,

  /// Excluded from chat.
  KICKED,

  /// Left the chat.
  LEFT
}
