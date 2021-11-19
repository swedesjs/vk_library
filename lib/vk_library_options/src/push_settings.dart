part of "../vk_library_options.dart";

/// Configuring push notifications.
class PushSettings {
  /// Private messages.
  final List<MsgPushSettings>? msg;

  /// Group chats.
  final List<MsgPushSettings>? chat;

  /// Friend request.
  final List<FriendPushSettings>? friend;

  /// Register an imported contact.
  final List<OnOffPushSettings>? friend_found;

  /// Confirmation of a friend request.
  final List<OnOffPushSettings>? friend_accepted;

  /// Reply.
  final List<OnOffPushSettings>? reply;

  /// Comments.
  final List<ParamsPushSettings>? comment;

  /// Mentions.
  final List<ParamsPushSettings>? mention;

  /// `Like` marks.
  final List<ParamsPushSettings>? like;

  /// Actions `Tell Friends`.
  final List<ParamsPushSettings>? repost;

  /// New post on the user's wall.
  final List<OnOffPushSettings>? wall_post;

  /// Posting the proposed news.
  final List<OnOffPushSettings>? wall_publish;

  /// Community invitation.
  final List<OnOffPushSettings>? group_invite;

  /// Confirmation of the application to join the group.
  final List<OnOffPushSettings>? group_accepted;

  /// Upcoming events.
  final List<OnOffPushSettings>? event_soon;

  /// Photo marks.
  final List<ParamsPushSettings>? tag_photo;

  /// Application requests.
  final List<OnOffPushSettings>? app_request;

  /// Installing the application.
  final List<OnOffPushSettings>? sdk_open;

  /// Posts from selected people and communities.
  final List<OnOffPushSettings>? new_post;

  /// Birthday notifications for the current date.
  final List<OnOffPushSettings>? birthday;

  const PushSettings({
    this.msg,
    this.chat,
    this.friend,
    this.friend_found,
    this.friend_accepted,
    this.reply,
    this.comment,
    this.mention,
    this.like,
    this.repost,
    this.wall_post,
    this.wall_publish,
    this.group_invite,
    this.group_accepted,
    this.event_soon,
    this.tag_photo,
    this.app_request,
    this.sdk_open,
    this.new_post,
    this.birthday,
  });

  @override
  String toString() {
    List<String> toStringLowerCase(List<Enum> enumeration) =>
        enumeration.map((e) => e.value).toList();

    return jsonEncode({
      if (msg != null) "msg": toStringLowerCase(msg!),
      if (chat != null) "chat": toStringLowerCase(chat!),
      if (friend != null) "friend": toStringLowerCase(friend!),
      if (friend_found != null)  "friend_found": toStringLowerCase(friend_found!),
      if (friend_accepted != null)"friend_accepted": toStringLowerCase(friend_accepted!),
      if (reply != null) "reply": toStringLowerCase(reply!),
      if (comment != null) "comment": toStringLowerCase(comment!),
      if (mention != null) "mention": toStringLowerCase(mention!),
      if (like != null) "like": toStringLowerCase(like!),
      if (repost != null) "repost": toStringLowerCase(repost!),
      if (wall_post != null) "wall_post": toStringLowerCase(wall_post!),
      if (wall_publish != null)"wall_publish": toStringLowerCase(wall_publish!),
      if (group_invite != null)"group_invite": toStringLowerCase(group_invite!),
      if (group_accepted != null) "group_accepted": toStringLowerCase(group_accepted!),
      if (event_soon != null) "event_soon": toStringLowerCase(event_soon!),
      if (tag_photo != null) "tag_photo": toStringLowerCase(tag_photo!),
      if (app_request != null) "app_request": toStringLowerCase(app_request!),
      if (sdk_open != null) "sdk_open": toStringLowerCase(sdk_open!),
      if (new_post != null) "new_post": toStringLowerCase(new_post!),
      if (birthday != null) "birthday": toStringLowerCase(birthday!),
    });
  }
}

enum MsgPushSettings {
  /// Turn on.
  ON,

  /// Switch off.
  OFF,

  /// Mute sound.
  NO_SOUND,

  /// Do not send the text of the message.
  NO_TEXT
}

enum FriendPushSettings {
  /// Turn on.
  ON,

  /// Switch off.
  OFF,

  /// Notify only if you have mutual friends.
  MUTUAL
}

enum OnOffPushSettings {
  /// Turn on.
  ON,

  /// Switch off.
  OFF
}

enum ParamsPushSettings {
  /// Turn on.
  ON,

  /// Switch off.
  OFF,

  /// Notifications from friends and friends of friends only.
  FR_OF_FR
}
