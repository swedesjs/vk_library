part of vk_library;

class Messages {
  final API _api;

  const Messages(this._api);

  Future<bool> addChatUser({
    required int chatId,
    int? userId,
    int? visibleMessagesCount,
  }) async {
    final data = await _api.call("messages.addChatUser", {
      "chat_id": chatId,
      if (userId != null) "user_id": userId,
      if (visibleMessagesCount != null) "visible_messages_count": visibleMessagesCount
    });

    return data.response as int == 1;
  }

  Future<bool> allowMessagesFromGroup({
    required int groupId,
    String? key,
  }) async {
    final data = await _api.call("messages.allowMessagesFromGroup", {
      "group_id": groupId,
      if (key != null) "key": key,
    });

    return data.response as int == 1;
  }

  Future<int> createChat({
    List<int>? userIds,
    String? title,
    int? groupId,
  }) async {
    final data = await _api.call("messages.createChat", {
      if (userIds != null) "user_ids": userIds.join(","),
      if (title != null) "title": title,
      if (groupId != null) "group_id": groupId
    });

    return data.response as int;
  }

  Future<Call> delete({
    List<int>? messagesIds,
    bool? spam,
    int? groupId,
    bool? deleteForAll,
    int? peerId,
    List<int>? conversationMessageIds,
  }) {
    return _api.call("messages.delete", {
      if (messagesIds != null) "messages_ids": messagesIds.join(","),
      if (spam != null) "spam": spam,
      if (groupId != null) "group_id": groupId,
      if (deleteForAll != null) "delete_for_all": deleteForAll,
      if (peerId != null) "peer_id": peerId,
      if (conversationMessageIds != null) "conversation_message_ids": conversationMessageIds
    });
  }

   Future<ReturnedDeleteChatPhoto> deleteChatPhoto({
    required int chatId,
    int? group_id,
  }) async {
    final data = await _api.call("messages.deleteChatPhoto", {
      "chat_id": chatId,
      if (group_id != null) "group_id": group_id,
    });

    return ReturnedDeleteChatPhoto(data.response);
  }

  Future<Call> send({
    int? userId,
    int? peerId,
    List<int>? peerIds,
    String? domain,
    int? chatId,
    String? message,
    num? lat,
    num? long,
    List<String>? attachment,
    int? replyTo,
    List<int>? forwardMessages,
    ForwardParamSend? forward,
    int? stickerId,
    int? groupId,
    dynamic keyboard,
    dynamic template,
    dynamic payload,
    dynamic contentSource,
    bool? dontParseLinks,
    bool? disableMentions,
    String? intent,
    int? subscribeId,
    int? randomId,
  }) {
    return _api.call("messages.send", {
      if (userId != null) "user_id": userId,
      if (peerId != null) "peer_id": peerId,
      if (peerIds != null) "peer_ids": peerIds,
      if (domain != null) "domain": domain,
      if (chatId != null) "chat_id": chatId,
      if (message != null) "message": message,
      if (lat != null) "lat": lat,
      if (long != null) "long": long,
      if (attachment != null) "attachment": attachment.join(","),
      if (replyTo != null) "reply_to": replyTo,
      if (forwardMessages != null) "forward_messages": forwardMessages,
      if (forward != null) "forward": forward,
      if (stickerId != null) "sticker_id": stickerId,
      if (groupId != null) "group_id": groupId,
      if (keyboard != null) "keyboard": keyboard,
      if (template != null) "template": template,
      if (payload != null) "payload": payload,
      if (contentSource != null) "content_source": contentSource,
      if (dontParseLinks != null) "dont_parse_links": dontParseLinks,
      if (disableMentions != null) "disable_mentions": disableMentions,
      if (intent != null) "intent": intent,
      if (subscribeId != null) "substribe_id": subscribeId,
      "random_id": randomId ?? Random().nextInt(4294967296)
    });
  }
}
