part of vk_library;

class ForwardParamSend {
  final int? ownerId, peerId;
  final List<int>? conversationMessageIds, messageIds;
  final bool? isReply;

  ForwardParamSend({
    this.ownerId,
    this.peerId,
    this.conversationMessageIds,
    this.messageIds,
    this.isReply,
  });

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
