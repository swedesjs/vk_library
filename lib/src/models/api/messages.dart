part of vk_library;

class Messages {
  final API _api;

  const Messages(this._api);

  Future<Map<String, dynamic>> send({
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
    return _api.call(
      "messages.send",
      {
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
        "random_id": randomId ?? Random().nextInt(4294967296),
      },
    );
  }
}
