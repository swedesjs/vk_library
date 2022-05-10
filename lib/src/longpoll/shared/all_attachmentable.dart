import 'package:vk_library/src/longpoll/longpoll.dart';
import 'package:vk_library/src/longpoll/shared/attachmentable.dart';

import 'message_forwards_collection.dart';

class AllAttachmentable extends Attachmentable {
  final MessageForwardsCollection _forwards;
  final MessageModel? _replyMessage;

  AllAttachmentable({
    required MessageForwardsCollection forwards,
    MessageModel? replyMessage,
    required List<AbstractAttachment> attachments,
  })  : _forwards = forwards,
        _replyMessage = replyMessage,
        super(attachments);

  /// Checks for presence in all possible attachment messages
  bool hasAllAttachments([AttachmentType? type]) {
    return hasAttachments(type) ||
        (_replyMessage?.hasAttachments(type) ?? false) ||
        _forwards.hasAttachments(type);
  }

  /// Finds necessary attachments in all possible messages
  List<AbstractAttachment> getAllAttachments([AttachmentType? type]) {
    return [
      ...getAttachments(type),
      ...?_replyMessage?.getAttachments(type),
      ..._forwards.getAttachments(type)
    ];
  }
}
