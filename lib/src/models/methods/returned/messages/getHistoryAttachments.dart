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
  MessagesGetHistoryAttachmentsAttachment get attachment =>
      MessagesGetHistoryAttachmentsAttachment(object["attachment"]);
}

/// Interface for the [ReturnedMessagesGetHistoryAttachments.attachment] field
class MessagesGetHistoryAttachmentsAttachment {
  /// The object that is used for the interface
  final Json object;
  const MessagesGetHistoryAttachmentsAttachment(this.object);

  /// Attachment type.
  AttachmentType? get type {
    switch (object["type"]) {
      case "photo":
        return AttachmentType.PHOTO;
      case "video":
        return AttachmentType.VIDEO;
      case "audio":
        return AttachmentType.AUDIO;
      case "doc":
        return AttachmentType.DOC;
      case "link":
        return AttachmentType.LINK;
      case "market":
        return AttachmentType.MARKET;
      case "wall":
        return AttachmentType.WALL;
    }
  }

  /// An object describing the [photograph](https://vk.com/dev/objects/photo).
  PhotoObject? get photo {
    final photo = object["photo"];
    if (photo != null) return PhotoObject(photo);
  }

  /// The object describing the [video](https://vk.com/dev/objects/video).
  VideoObject? get video {
    final video = object["video"];
    if (video != null) return VideoObject(video);
  }

  /// Object describing [audio recording](https://vk.com/dev/objects/audio).
  AudioObject? get audio {
    final audio = object["audio"];
    if (audio != null) return AudioObject(audio);
  }

  /// Object describing [document](https://vk.com/dev/objects/doc).
  DocumentObject? get doc {
    final doc = object["doc"];
    if (doc != null) return DocumentObject(doc);
  }

  /// Object describing [link](https://vk.com/dev/objects/link).
  // TODO: Implement a reference object - https://vk.com/dev/objects/link.
  Json? get link => object["link"];

  /// Object describing [product](https://vk.com/dev/objects/market).
  // TODO: Implement a product object - https://vk.com/dev/objects/market.
  Json? get market => object["market"];

  /// Object describing [writing on the wall](https://vk.com/dev/objects/post).
  // TODO: Implement a wall post object - https://vk.com/dev/objects/post.
  Json? get wall => object["wall"];
}

/// Enum describing the type of VK attachments.
enum AttachmentType {
  /// The photo.
  PHOTO,

  /// Video.
  VIDEO,

  /// Audio recording.
  AUDIO,

  /// Document.
  DOC,

  /// Link.
  LINK,

  /// Product.
  MARKET,

  /// Recording.
  WALL
}
