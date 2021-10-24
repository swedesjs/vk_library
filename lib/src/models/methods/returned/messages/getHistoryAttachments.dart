part of vk_library;

/// Interface for the [Messages.getHistoryAttachments] method
class ReturnedMessagesGetHistoryAttachments {
  /// The object that is used for the interface
  final Json object;
  const ReturnedMessagesGetHistoryAttachments(this.object);

  /// The ID of the message in which the attachment was sent.
  int get messageId => object["message_id"];

  /// Content for the new value of `startFrom`.
  String get nextFrom => object["next_from"];

  /// Objects describing attachments.
  // TODO: Find out what it is in more detail and implement the interface.
  List<Json> get items => object["items"];

  /// Attachment information.
  // TODO: Implement the interface. And behind it, the interfaces describing:
  //  Video recording - https://vk.com/dev/objects/video
  //  Audio recording - https://vk.com/dev/objects/audio
  //  Document - https://vk.com/dev/objects/doc
  //  Link - https://vk.com/dev/objects/link
  //  Product - https://vk.com/dev/objects/market
  //  Wall post - https://vk.com/dev/objects/post
  Json get attachment => object["attachment"];
}
