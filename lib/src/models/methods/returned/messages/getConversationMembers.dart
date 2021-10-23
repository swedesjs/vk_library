part of vk_library;

/// Interface for the [ReturnedMessagesGetConversationMembers.items] field
class MessagesGetConversationMembersItems {
  /// The object that is used for the interface
  final Json object;
  const MessagesGetConversationMembersItems(this.object);

  /// Conversation participant ID.
  int get memberId => object["member_id"];

  /// The ID of the user who invited the participant.
  int get invitedBy => object["invited_by"];

  /// Date added to conversation.
  int get joinDate => object["join_date"];

  /// Whether the user is an administrator.
  bool get isAdmin => object["is_admin"];

  /// Whether the current user can exclude a member.
  bool get canKick => object["can_kick"];
}

/// Interface for the `messages.getConversationMembers` method
class ReturnedMessagesGetConversationMembers {
  /// The object that is used for the interface
  final Json object;

  const ReturnedMessagesGetConversationMembers(this.object);

  /// The number of participants in the conversation.
  int get count => object["count"];

  /// Participants of the conversation. Array of objects
  List<MessagesGetConversationMembersItems> get items =>
      (object["items"] as List)
          .cast<Json>()
          .map((e) => MessagesGetConversationMembersItems(e))
          .toList();

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
}
