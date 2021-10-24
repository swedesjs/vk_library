part of vk_library;

/// Interface for the [Messages.getLongPollHistory] method
class ReturnedMessagesGetLongPollHistory {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetLongPollHistory(this.object);

  /// The [history] field is an array similar to the `updates` field received from the Long Poll server.
  List<List<int>> get history => object["history"];

  /// The [messages] field is an array of private messages - [MessageObject] objects that were encountered among events with code 4 (adding a new message) from the [history] field. Each message object contains a set of fields, a description of which is available here. The first element of the array is the total number of messages.
  MessagesGetLongPollHistoryMessages get messages =>
      MessagesGetLongPollHistoryMessages(object["messages"]);

  /// Array of [user objects](https://vk.com/dev/objects/user) ([ProfileObject]).
  List<ProfileObject>? get profiles {
    final List<Json>? profiles = object["profiles"];
    if (profiles != null) return profiles.map((e) => ProfileObject(e)).toList();
  }

  /// Array of [community objects](https://vk.com/dev/objects/group) ([GroupObject]).
  List<GroupObject>? get groups {
    final List<Json>? groups = object["groups"];
    if (groups != null) return groups.map((e) => GroupObject(e)).toList();
  }

  /// It is not known what it is, but in the example method it was.
  int? get newPts => object["new_pts"];
}

/// The interface for the [ReturnedMessagesGetLongPollHistory.messages] field.
class MessagesGetLongPollHistoryMessages {
  /// The object that is used for the interface
  final Json object;
  const MessagesGetLongPollHistoryMessages(this.object);

  /// Number of results.
  int get count => object["count"];

  /// Private message objects.
  List<MessageObject> get items => (object["items"] as List)
      .cast<Json>()
      .map((e) => MessageObject(e))
      .toList();
}
