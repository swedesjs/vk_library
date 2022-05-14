import 'package:vk_library/src/longpoll/longpoll.dart';
import 'package:vk_library/src/longpoll/shared/attachmentable.dart';

import 'message_forwards_collection.dart';

mixin AllAttachmentable on Attachmentable {
  MessageForwardsCollection get forwards;

  MessageModel? get replyMessage;

  /// Checks for presence in all possible attachment messages
  bool hasAllAttachments([AttachmentType? type]) {
    return hasAttachments(type) ||
        (replyMessage?.hasAttachments(type) ?? false) ||
        forwards.hasAttachments(type);
  }

  /// Finds necessary attachments in all possible messages
  List<AbstractAttachment> getAllAttachments([AttachmentType? type]) {
    return [
      ...getAttachments(type),
      ...?replyMessage?.getAttachments(type),
      ...forwards.getAttachments(type)
    ];
  }
}
