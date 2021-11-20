part of vk_library_options;

/// The class is designed to send messages using the [Messages.send] method as the `forward` parameter
/// ```dart
/// await vk.api.messages.send(
///  chatId: 1,
///  forward: const ForwardMessagesSend(messageIds: [3, 5]),
/// );
/// ```
class ForwardMessagesSend {
  /// The owner of the messages. Worth transferring if you want to forward messages from the community to the conversation.
  final int? ownerId;

  /// The identifier of the location from which you want to forward messages.
  final int? peerId;

  /// Array of conversation_message_id of messages to be forwarded.
  final List<int>? conversationMessageIds;

  /// An array of message ids.
  final List<int>? messageIds;

  /// Reply to messages.
  final bool? isReply;

  /// The constructor is for the [Messages.send] method as the `forward` parameter.
  ///
  /// - [ownerId] - message owner. Worth transferring if you want to forward messages from the community to the conversation;
  /// - [peerId] - identifier of the place from which messages should be forwarded;
  /// - [conversationMessageIds] - array of conversation_message_id messages to be forwarded. You can send messages to the conversation_message_ids array:
  ///   - being in a personal dialogue with the bot;
  ///   - which are outgoing messages of the bot;
  ///   - written after the bot entered the conversation and access to messages appeared.
  /// - [messageIds] - array of message id;
  /// - [isReply] - reply to messages. It is worth transferring if you want to reply to messages in the same chat that the messages are in. However, there should be only one element in [conversationMessageIds]/[messageIds].
  const ForwardMessagesSend({
    this.ownerId,
    this.peerId,
    this.conversationMessageIds,
    this.messageIds,
    this.isReply,
  });

  /// Returns the resulting object in JSON format.
  @override
  String toString() => jsonEncode(
        {
          if (ownerId != null) "owner_id": ownerId,
          if (peerId != null) "peer_id": peerId,
          if (conversationMessageIds != null)
            "conversation_message_ids": conversationMessageIds,
          if (messageIds != null) "message_ids": messageIds,
          if (isReply != null) "is_reply": isReply
        },
      );
}
