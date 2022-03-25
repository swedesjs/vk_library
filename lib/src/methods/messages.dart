import 'package:vk_library/src/api.dart';

class Messages {
  final API _api;

  Messages(this._api);

  Future<Map<String, dynamic>> addChatUser({
    required int chatId,
    int? userId,
    int? visibleMessagesCount,
  }) =>
      _api.request('messages.addChatUser', {
        'chat_id': chatId,
        if (userId != null) 'user_id': userId,
        if (visibleMessagesCount != null)
          'visible_messages_count': visibleMessagesCount,
      });

  Future<Map<String, dynamic>> allowMessagesFromGroup({
    required int groupId,
    String? key,
  }) =>
      _api.request('messages.allowMessagesFromGroup', {
        'group_id': groupId,
        if (key != null) 'key': key,
      });

  Future<Map<String, dynamic>> createChat({
    List<int>? userIds,
    String? title,
    int? groupId,
  }) =>
      _api.request('messages.createChat', {
        if (userIds != null) 'user_ids': userIds.join(','),
        if (title != null) 'title': title,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> delete({
    List<int>? messageIds,
    bool? spam,
    int? groupId,
    bool? deleteForAll,
    int? peerId,
    List<int>? cmids,
  }) =>
      _api.request('messages.delete', {
        if (messageIds != null) 'message_ids': messageIds.join(','),
        if (spam != null) 'spam': spam,
        if (groupId != null) 'group_id': groupId,
        if (deleteForAll != null) 'delete_for_all': deleteForAll,
        if (peerId != null) 'peer_id': peerId,
        if (cmids != null) 'cmids': cmids.join(','),
      });

  Future<Map<String, dynamic>> deleteChatPhoto({
    required int chatId,
    int? groupId,
  }) =>
      _api.request('messages.deleteChatPhoto', {
        'chat_id': chatId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> deleteConversation({
    int? userId,
    int? peerId,
    int? groupId,
  }) =>
      _api.request('messages.deleteConversation', {
        if (userId != null) 'user_id': userId,
        if (peerId != null) 'peer_id': peerId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> denyMessagesFromGroup({
    required int groupId,
  }) =>
      _api.request('messages.denyMessagesFromGroup', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> edit({
    required int peerId,
    String? message,
    num? lat,
    num? long,
    String? attachment,
    bool? keepForwardMessages,
    bool? keepSnippets,
    int? groupId,
    bool? dontParseLinks,
    bool? disableMentions,
    int? messageId,
    int? conversationMessageId,
    String? template,
    String? keyboard,
  }) =>
      _api.request('messages.edit', {
        'peer_id': peerId,
        if (message != null) 'message': message,
        if (lat != null) 'lat': lat,
        if (long != null) 'long': long,
        if (attachment != null) 'attachment': attachment,
        if (keepForwardMessages != null)
          'keep_forward_messages': keepForwardMessages,
        if (keepSnippets != null) 'keep_snippets': keepSnippets,
        if (groupId != null) 'group_id': groupId,
        if (dontParseLinks != null) 'dont_parse_links': dontParseLinks,
        if (disableMentions != null) 'disable_mentions': disableMentions,
        if (messageId != null) 'message_id': messageId,
        if (conversationMessageId != null)
          'conversation_message_id': conversationMessageId,
        if (template != null) 'template': template,
        if (keyboard != null) 'keyboard': keyboard,
      });

  Future<Map<String, dynamic>> editChat({
    required int chatId,
    String? title,
  }) =>
      _api.request('messages.editChat', {
        'chat_id': chatId,
        if (title != null) 'title': title,
      });

  Future<Map<String, dynamic>> getByConversationMessageId({
    required int peerId,
    required List<int> conversationMessageIds,
    bool? extended,
    List<Object>? fields,
    int? groupId,
  }) =>
      _api.request('messages.getByConversationMessageId', {
        'peer_id': peerId,
        'conversation_message_ids': conversationMessageIds.join(','),
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getById({
    required List<int> messageIds,
    int? previewLength,
    bool? extended,
    List<Object>? fields,
    int? groupId,
  }) =>
      _api.request('messages.getById', {
        'message_ids': messageIds.join(','),
        if (previewLength != null) 'preview_length': previewLength,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getChatPreview({
    int? peerId,
    String? link,
    List<Object>? fields,
  }) =>
      _api.request('messages.getChatPreview', {
        if (peerId != null) 'peer_id': peerId,
        if (link != null) 'link': link,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> getConversationMembers({
    required int peerId,
    List<Object>? fields,
    int? groupId,
  }) =>
      _api.request('messages.getConversationMembers', {
        'peer_id': peerId,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getConversations({
    int? offset,
    int? count,
    String? filter,
    bool? extended,
    int? startMessageId,
    List<Object>? fields,
    int? groupId,
  }) =>
      _api.request('messages.getConversations', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (filter != null) 'filter': filter,
        if (extended != null) 'extended': extended,
        if (startMessageId != null) 'start_message_id': startMessageId,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getConversationsById({
    required List<int> peerIds,
    bool? extended,
    List<Object>? fields,
    int? groupId,
  }) =>
      _api.request('messages.getConversationsById', {
        'peer_ids': peerIds.join(','),
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getHistory({
    int? offset,
    int? count,
    int? userId,
    int? peerId,
    int? startMessageId,
    int? rev,
    bool? extended,
    List<Object>? fields,
    int? groupId,
  }) =>
      _api.request('messages.getHistory', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (userId != null) 'user_id': userId,
        if (peerId != null) 'peer_id': peerId,
        if (startMessageId != null) 'start_message_id': startMessageId,
        if (rev != null) 'rev': rev,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getHistoryAttachments({
    required int peerId,
    String? mediaType,
    String? startFrom,
    int? count,
    bool? photoSizes,
    List<Object>? fields,
    int? groupId,
    bool? preserveOrder,
    int? maxForwardsLevel,
  }) =>
      _api.request('messages.getHistoryAttachments', {
        'peer_id': peerId,
        if (mediaType != null) 'media_type': mediaType,
        if (startFrom != null) 'start_from': startFrom,
        if (count != null) 'count': count,
        if (photoSizes != null) 'photo_sizes': photoSizes,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
        if (preserveOrder != null) 'preserve_order': preserveOrder,
        if (maxForwardsLevel != null) 'max_forwards_level': maxForwardsLevel,
      });

  Future<Map<String, dynamic>> getImportantMessages({
    int? count,
    int? offset,
    int? startMessageId,
    int? previewLength,
    List<Object>? fields,
    bool? extended,
    int? groupId,
  }) =>
      _api.request('messages.getImportantMessages', {
        if (count != null) 'count': count,
        if (offset != null) 'offset': offset,
        if (startMessageId != null) 'start_message_id': startMessageId,
        if (previewLength != null) 'preview_length': previewLength,
        if (fields != null) 'fields': fields.join(','),
        if (extended != null) 'extended': extended,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getIntentUsers({
    required String intent,
    int? subscribeId,
    int? offset,
    int? count,
    bool? extended,
    List<String>? nameCase,
    List<String>? fields,
  }) =>
      _api.request('messages.getIntentUsers', {
        'intent': intent,
        if (subscribeId != null) 'subscribe_id': subscribeId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (nameCase != null) 'name_case': nameCase.join(','),
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> getInviteLink({
    required int peerId,
    bool? reset,
    int? groupId,
  }) =>
      _api.request('messages.getInviteLink', {
        'peer_id': peerId,
        if (reset != null) 'reset': reset,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> getLastActivity({
    required int userId,
  }) =>
      _api.request('messages.getLastActivity', {
        'user_id': userId,
      });

  Future<Map<String, dynamic>> getLongPollHistory({
    int? ts,
    int? pts,
    int? previewLength,
    bool? onlines,
    List<Object>? fields,
    int? eventsLimit,
    int? msgsLimit,
    int? maxMsgId,
    int? groupId,
    int? lpVersion,
    int? lastN,
    bool? credentials,
    bool? extended,
  }) =>
      _api.request('messages.getLongPollHistory', {
        if (ts != null) 'ts': ts,
        if (pts != null) 'pts': pts,
        if (previewLength != null) 'preview_length': previewLength,
        if (onlines != null) 'onlines': onlines,
        if (fields != null) 'fields': fields.join(','),
        if (eventsLimit != null) 'events_limit': eventsLimit,
        if (msgsLimit != null) 'msgs_limit': msgsLimit,
        if (maxMsgId != null) 'max_msg_id': maxMsgId,
        if (groupId != null) 'group_id': groupId,
        if (lpVersion != null) 'lp_version': lpVersion,
        if (lastN != null) 'last_n': lastN,
        if (credentials != null) 'credentials': credentials,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getLongPollServer({
    bool? needPts,
    int? groupId,
    int? lpVersion,
  }) =>
      _api.request('messages.getLongPollServer', {
        if (needPts != null) 'need_pts': needPts,
        if (groupId != null) 'group_id': groupId,
        if (lpVersion != null) 'lp_version': lpVersion,
      });

  Future<Map<String, dynamic>> isMessagesFromGroupAllowed({
    required int groupId,
    required int userId,
  }) =>
      _api.request('messages.isMessagesFromGroupAllowed', {
        'group_id': groupId,
        'user_id': userId,
      });

  Future<Map<String, dynamic>> joinChatByInviteLink({
    required String link,
  }) =>
      _api.request('messages.joinChatByInviteLink', {
        'link': link,
      });

  Future<Map<String, dynamic>> markAsAnsweredConversation({
    required int peerId,
    bool? answered,
    int? groupId,
  }) =>
      _api.request('messages.markAsAnsweredConversation', {
        'peer_id': peerId,
        if (answered != null) 'answered': answered,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> markAsImportant({
    List<int>? messageIds,
    int? important,
  }) =>
      _api.request('messages.markAsImportant', {
        if (messageIds != null) 'message_ids': messageIds.join(','),
        if (important != null) 'important': important,
      });

  Future<Map<String, dynamic>> markAsImportantConversation({
    required int peerId,
    bool? important,
    int? groupId,
  }) =>
      _api.request('messages.markAsImportantConversation', {
        'peer_id': peerId,
        if (important != null) 'important': important,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> markAsRead({
    List<int>? messageIds,
    int? peerId,
    int? startMessageId,
    int? groupId,
    bool? markConversationAsRead,
  }) =>
      _api.request('messages.markAsRead', {
        if (messageIds != null) 'message_ids': messageIds.join(','),
        if (peerId != null) 'peer_id': peerId,
        if (startMessageId != null) 'start_message_id': startMessageId,
        if (groupId != null) 'group_id': groupId,
        if (markConversationAsRead != null)
          'mark_conversation_as_read': markConversationAsRead,
      });

  Future<Map<String, dynamic>> pin({
    required int peerId,
    int? messageId,
    int? conversationMessageId,
  }) =>
      _api.request('messages.pin', {
        'peer_id': peerId,
        if (messageId != null) 'message_id': messageId,
        if (conversationMessageId != null)
          'conversation_message_id': conversationMessageId,
      });

  Future<Map<String, dynamic>> removeChatUser({
    required int chatId,
    int? userId,
    int? memberId,
  }) =>
      _api.request('messages.removeChatUser', {
        'chat_id': chatId,
        if (userId != null) 'user_id': userId,
        if (memberId != null) 'member_id': memberId,
      });

  Future<Map<String, dynamic>> restore({
    required int messageId,
    int? groupId,
  }) =>
      _api.request('messages.restore', {
        'message_id': messageId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> search({
    String? q,
    int? peerId,
    int? date,
    int? previewLength,
    int? offset,
    int? count,
    bool? extended,
    List<String>? fields,
    int? groupId,
  }) =>
      _api.request('messages.search', {
        if (q != null) 'q': q,
        if (peerId != null) 'peer_id': peerId,
        if (date != null) 'date': date,
        if (previewLength != null) 'preview_length': previewLength,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> searchConversations({
    String? q,
    int? count,
    bool? extended,
    List<Object>? fields,
    int? groupId,
  }) =>
      _api.request('messages.searchConversations', {
        if (q != null) 'q': q,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
        if (fields != null) 'fields': fields.join(','),
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> send({
    int? userId,
    int? randomId,
    int? peerId,
    List<int>? peerIds,
    String? domain,
    int? chatId,
    List<int>? userIds,
    String? message,
    num? lat,
    num? long,
    String? attachment,
    int? replyTo,
    List<int>? forwardMessages,
    String? forward,
    int? stickerId,
    int? groupId,
    String? keyboard,
    String? template,
    String? payload,
    String? contentSource,
    bool? dontParseLinks,
    bool? disableMentions,
    String? intent,
    int? subscribeId,
  }) =>
      _api.request('messages.send', {
        if (userId != null) 'user_id': userId,
        if (randomId != null) 'random_id': randomId,
        if (peerId != null) 'peer_id': peerId,
        if (peerIds != null) 'peer_ids': peerIds.join(','),
        if (domain != null) 'domain': domain,
        if (chatId != null) 'chat_id': chatId,
        if (userIds != null) 'user_ids': userIds.join(','),
        if (message != null) 'message': message,
        if (lat != null) 'lat': lat,
        if (long != null) 'long': long,
        if (attachment != null) 'attachment': attachment,
        if (replyTo != null) 'reply_to': replyTo,
        if (forwardMessages != null)
          'forward_messages': forwardMessages.join(','),
        if (forward != null) 'forward': forward,
        if (stickerId != null) 'sticker_id': stickerId,
        if (groupId != null) 'group_id': groupId,
        if (keyboard != null) 'keyboard': keyboard,
        if (template != null) 'template': template,
        if (payload != null) 'payload': payload,
        if (contentSource != null) 'content_source': contentSource,
        if (dontParseLinks != null) 'dont_parse_links': dontParseLinks,
        if (disableMentions != null) 'disable_mentions': disableMentions,
        if (intent != null) 'intent': intent,
        if (subscribeId != null) 'subscribe_id': subscribeId,
      });

  Future<Map<String, dynamic>> sendMessageEventAnswer({
    required String eventId,
    required int userId,
    required int peerId,
    String? eventData,
  }) =>
      _api.request('messages.sendMessageEventAnswer', {
        'event_id': eventId,
        'user_id': userId,
        'peer_id': peerId,
        if (eventData != null) 'event_data': eventData,
      });

  Future<Map<String, dynamic>> setActivity({
    int? userId,
    String? type,
    int? peerId,
    int? groupId,
  }) =>
      _api.request('messages.setActivity', {
        if (userId != null) 'user_id': userId,
        if (type != null) 'type': type,
        if (peerId != null) 'peer_id': peerId,
        if (groupId != null) 'group_id': groupId,
      });

  Future<Map<String, dynamic>> setChatPhoto({
    required String file,
  }) =>
      _api.request('messages.setChatPhoto', {
        'file': file,
      });

  Future<Map<String, dynamic>> unpin({
    required int peerId,
    int? groupId,
  }) =>
      _api.request('messages.unpin', {
        'peer_id': peerId,
        if (groupId != null) 'group_id': groupId,
      });
}
