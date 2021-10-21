part of vk_library;

class Messages {
  final API _api;

  final CallMethodType callMethod;

  Messages(this._api) : callMethod = _api.callMethod("messages");

  Future<bool> addChatUser({
    required int chatId,
    int? userId,
    int? visibleMessagesCount,
  }) async {
    final data = await callMethod("addChatUser", {
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
    final data = await callMethod("allowMessagesFromGroup", {
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
    final data = await callMethod("createChat", {
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
    return callMethod("delete", {
      if (messagesIds != null) "messages_ids": messagesIds.join(","),
      if (spam != null) "spam": spam,
      if (groupId != null) "group_id": groupId,
      if (deleteForAll != null) "delete_for_all": deleteForAll,
      if (peerId != null) "peer_id": peerId,
      if (conversationMessageIds != null) "conversation_message_ids": conversationMessageIds
    });
  }

  Future<ReturnedMessagesDeleteChatPhoto> deleteChatPhoto({
    required int chatId,
    int? group_id,
  }) async {
    final data = await callMethod("deleteChatPhoto", {
      "chat_id": chatId,
      if (group_id != null) "group_id": group_id,
    });

    return ReturnedMessagesDeleteChatPhoto(data.response);
  }

  Future<ReturnedMessagesDeleteConversation> deleteConversation({
    int? userId,
    int? peerId,
    int? groupId,
  }) async {
    final data = await callMethod("deleteConversation", {
      if (userId != null) "user_id": userId,
      if (peerId != null) "peer_id": peerId,
      if (groupId != null) "group_id": groupId
    });

    return ReturnedMessagesDeleteConversation(data.response);
  }

  Future<bool> denyMessagesFromGroup({required int groupId}) async {
    final data = await callMethod("denyMessagesFromGroup", {"group_id": groupId});

    return data.response == 1;
  }

  Future<bool> edit({
    required int peerId,
    String? message,
    num? lat,
    num? long,
    List<String>? attachment,
    bool? keepForwardMessages,
    bool? keepSnippets,
    int? groupId,
    bool? dontParseLinks,
    int? messageId,
    int? conversationMessageId,
    dynamic template,
    dynamic keyboard,
  }) async {
    final data = await callMethod("edit", {
      "peer_id": peerId,
      if (message != null) "message": message,
      if (lat != null) "lat": lat,
      if (long != null) "long": long,
      if (attachment != null) "attachment": attachment.join(","),
      if (keepForwardMessages != null) "keep_forward_messages": keepForwardMessages,
      if (keepSnippets != null) "keep_snippets": keepSnippets,
      if (groupId != null) "group_id": groupId,
      if (dontParseLinks != null) "dont_parse_links": dontParseLinks,
      if (messageId != null) "message_id": messageId,
      if (conversationMessageId != null) "conversation_message_id": conversationMessageId,
      if (template != null) "template": template,
      if (keyboard != null) "keyboard": keyboard,
    });

    return data.response as int == 1;
  }

  Future<bool> editChat({required int chatId, String? title}) async {
    final data = await callMethod("editChat", {
      "chat_id": chatId,
      if (title != null) "title": title,
    });

    return data.response as int == 1;
  }

  Future<Json> getByConversationMessageId({
    required int peerId,
    List<int>? conversationMessageIds,
    bool? extended,
    List<String>? fields,
    int? groupId,
  }) async {
    final data = await callMethod("getByConversationMessageId", {
      "peer_id": peerId,
      if (conversationMessageIds != null)
        "conversation_message_ids": conversationMessageIds.join(","),
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (groupId != null) "group_id": groupId
    });

    return data.response;
  }

  Future<Json> getById({
    required List<int> messageIds,
    int? previewLength,
    bool? extended,
    List<String>? fields,
    int? groupId,
  }) async {
    final data = await callMethod("getById", {
      "message_ids": messageIds,
      if (previewLength != null) "preview_length": previewLength,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (groupId != null) "group_id": groupId
    });

    return data.response;
  }

  Future<Json> getChat({
    int? chatId,
    List<int>? chatIds,
    List<String>? fields,
    NameCase? nameCase,
  }) async {
    final data = await callMethod("getChat", {
      if (chatId != null) "chat_id": chatId,
      if (chatIds != null) "chat_ids": chatIds,
      if (fields != null) "fields": fields,
      if (nameCase != null) "name_case": nameCase
    });

    return data.response;
  }

  Future<Json> getChatPreview({
    int? peerId,
    String? link,
    List<String>? fields,
  }) async {
    final data = await callMethod("getChatPreview", {
      if (peerId != null) "peer_id": peerId,
      if (link != null) "link": link,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  Future<Json> getConversationMembers({
    required int peerId,
    int? offset,
    int? count,
    bool? extended,
    List<String>? fields,
    int? groupId,
  }) async {
    final data = await callMethod("getConversationMembers", {
      "peer_id": peerId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  Future<Json> getConversations({List<String>? fields}) async {
    final data = await callMethod("getConversations", {
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  Future<Json> getConversationsById({
    required List<int> peerIds,
    bool? extended,
    List<String>? fields,
    int? groupId,
  }) async {
    final data = await callMethod("getConversationsById", {
      "peer_ids": peerIds,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  Future<Json> getHistory({
    int? offset,
    int? count,
    int? userId,
    int? peerId,
    int? startMessageId,
    int? rev,
    bool? extended,
    List<String>? fields,
    int? groupId,
  }) async {
    final data = await callMethod("getHistory", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (userId != null) "user_id": userId,
      if (peerId != null) "peer_id": peerId,
      if (startMessageId != null) "start_message_id": startMessageId,
      if (rev != null) "rev": rev,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  Future<Json> getHistoryAttachments({
    required int peerId,
    MediaType? mediaType,
    String? startFrom,
    int? count,
    bool? photoSizes,
    List<String>? fields,
    int? groupId,
    bool? preserveOrder,
    int? maxForwardsLevel,
  }) async {
    final data = await callMethod("getHistoryAttachments", {
      "peer_id": peerId,
      if (mediaType != null) "media_type": mediaType,
      if (startFrom != null) "start_from": startFrom,
      if (count != null) "count": count,
      if (photoSizes != null) "photo_sizes": photoSizes,
      if (fields != null) "fields": fields.join(","),
      if (groupId != null) "group_id": groupId,
      if (preserveOrder != null) "preserve_order": preserveOrder,
      if (maxForwardsLevel != null) "max_forwards_level": maxForwardsLevel,
    });

    return data.response;
  }

  Future<Json> getImportantMessages({
    int? count,
    int? offset,
    int? start_message_id,
    int? preview_length,
    List<String>? fields,
    bool? extended,
    int? group_id,
  }) async {
    final data = await callMethod("getImportantMessages", {
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (start_message_id != null) "start_message_id": start_message_id,
      if (preview_length != null) "preview_length": preview_length,
      if (fields != null) "fields": fields.join(","),
      if (extended != null) "extended": extended,
      if (group_id != null) "group_id": group_id,
    });

    return data.object;
  }

  Future<Json> getIntentUsers({
    required Intent intent,
    int? subscribeId,
    int? offset,
    int? count,
    bool? extended,
    NameCase? nameCase,
    List<String>? fields,
  }) async {
    final data = await callMethod("getIntentUsers", {
      "intent": intent,
      if (subscribeId != null) "subscribe_id": subscribeId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (nameCase != null) "name_case": nameCase,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  Future<Json> getInviteLink({required int peerId, bool? reset, int? groupId}) async {
    final data = await callMethod("getInviteLink", {
      "peer_id": peerId,
      if (reset != null) "reset": reset,
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  Future<Json> getLastActivity({required int userId}) async {
    final data = await callMethod("getLastActivity", {"user_id": userId});

    return data.response;
  }

  Future<Json> getLongPollHistory({
    int? ts,
    int? pts,
    int? previewLength,
    bool? onlines,
    List<String>? fields,
    int? eventsLimit,
    int? msgsLimit,
    int? maxMsgId,
    int? groupId,
    int? lpVersion,
    int? lastN,
    bool? credentials,
  }) async {
    final data = await callMethod("getLongPollHistory", {
      if (ts != null) "ts": ts,
      if (pts != null) "pts": pts,
      if (previewLength != null) "preview_length": previewLength,
      if (onlines != null) "onlines": onlines,
      if (fields != null) "fields": fields.join(","),
      if (eventsLimit != null) "events_limit": eventsLimit,
      if (msgsLimit != null) "msgs_limit": msgsLimit,
      if (maxMsgId != null) "max_msg_id": maxMsgId,
      if (groupId != null) "group_id": groupId,
      if (lpVersion != null) "lp_version": lpVersion,
      if (lastN != null) "last_n": lastN,
      if (credentials != null) "credentials": credentials,
    });

    return data.response;
  }

  Future<Json> getLongPollServer({
    bool? needPts,
    int? groupId,
    int? lpVersion,
  }) async {
    final data = await callMethod("getLongPollServer", {
      if (needPts != null) "need_pts": needPts,
      if (groupId != null) "group_id": groupId,
      if (lpVersion != null) "lp_version": lpVersion,
    });

    return data.response;
  }

  Future<Json> isMessagesFromGroupAllowed({required int groupId, required int userId}) async {
    final data = await callMethod("isMessagesFromGroupAllowed", {
      "group_id": groupId,
      "user_id": userId,
    });

    return data.response;
  }

  Future<Json> joinChatByInviteLink({required String link}) async {
    final data = await callMethod("joinChatByInviteLink", {"link": link});

    return data.response;
  }

  Future<bool> markAsAnsweredConversation({
    required int peerId,
    bool? answered,
    int? groupId,
  }) async {
    final data = await callMethod("markAsAnsweredConversation", {
      "peer_id": peerId,
      if (answered != null) "answered": answered,
      if (groupId != null) "group_id": groupId,
    });

    return data.response as int == 1;
  }

  Future<List<int>> markAsImportant({List<int>? messageIds, bool? important}) async {
    final data = await callMethod("markAsImportant", {
      if (messageIds != null) "message_ids": messageIds.join(","),
      if (important != null) "important": important ? 1 : 0,
    });

    return data.response;
  }

  Future<bool> markAsImportantConversation({
    required int peerId,
    bool? important,
    int? groupId,
  }) async {
    final data = await callMethod("markAsImportantConversation", {
      "peer_id": peerId,
      if (important != null) "important": important,
      if (groupId != null) "group_id": groupId,
    });

    return data.response as int == 1;
  }

  Future<bool> markAsRead({
    List<int>? messageIds,
    int? peerId,
    int? startMessageId,
    int? groupId,
    bool? markConversationAsRead,
  }) async {
    final data = await callMethod("markAsRead", {
      if (messageIds != null) "message_ids": messageIds.join(","),
      if (peerId != null) "peer_id": peerId,
      if (startMessageId != null) "start_message_id": startMessageId,
      if (groupId != null) "group_id": groupId,
      if (markConversationAsRead != null) "mark_conversation_as_read": markConversationAsRead,
    });

    return data.response as int == 1;
  }

  Future<Json> pin({
    required int peerId,
    int? messageId,
    int? conversationMessageId,
  }) async {
    final data = await callMethod("pin", {
      "peer_id": peerId,
      if (messageId != null) "message_id": messageId,
      if (conversationMessageId != null) "conversation_message_id": conversationMessageId,
    });

    return data.response;
  }

  Future<bool> removeChatUser({required int chatId, int? userId, int? memberId}) async {
    final data = await callMethod("removeChatUser", {
      "chat_id": chatId,
      if (userId != null) "user_id": userId,
      if (memberId != null) "member_id": memberId,
    });

    return data.response as int == 1;
  }

  Future<bool> restore({required int messageId, int? groupId}) async {
    final data = await callMethod("restore", {
      "message_id": messageId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response as int == 1;
  }

  Future<Json> search({
    String? q,
    int? peerId,
    String? date,
    int? previewLength,
    int? offset,
    int? count,
    bool? extended,
    List<String>? fields,
    int? groupId,
  }) async {
    final data = await callMethod("search", {
      if (q != null) "q": q,
      if (peerId != null) "peer_id": peerId,
      if (date != null) "date": date,
      if (previewLength != null) "preview_length": previewLength,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (groupId != null) "group_id": groupId,
    });

    return data.response;
  }

  Future<Json> searchConversations({
    String? q,
    int? count,
    bool? extended,
    List<String>? fields,
    int? group_id,
  }) async {
    final data = await callMethod("searchConversations", {
      if (q != null) "q": q,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (fields != null) "fields": fields.join(","),
      if (group_id != null) "group_id": group_id
    });

    return data.response;
  }

  Future<Json> sendMessageEventAnswer({
    required String eventId,
    required int userId,
    required int peerId,
    dynamic eventData,
  }) async {
    final data = await callMethod("sendMessageEventAnswer", {
      "event_id": eventId,
      "user_id": userId,
      "peer_id": peerId,
      if (eventData != null) "event_data": eventData,
    });

    return data.response;
  }

  Future<bool> setActivity({
    int? user_id,
    MessagesSetActivityType? type,
    int? peer_id,
    int? group_id,
  }) async {
    final data = await callMethod("setActivity", {
      if (user_id != null) "user_id": user_id,
      if (type != null) "type": type,
      if (peer_id != null) "peer_id": peer_id,
      if (group_id != null) "group_id": group_id,
    });

    return data.response as int == 1;
  }

  Future<Json> setChatPhoto({required String file}) async {
    final data = await callMethod("setChatPhoto", {"file": file});

    return data.response;
  }

  Future<bool> unpin({required int peerId, int? groupId}) async {
    final data = await callMethod("unpin", {
      "peer_id": peerId,
      if (groupId != null) "group_id": groupId,
    });

    return data.response as int == 1;
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
    return callMethod("send", {
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
