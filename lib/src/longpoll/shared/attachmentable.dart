import 'package:vk_library/vk_library.dart';

mixin Attachmentable {
  List<AbstractAttachment> get attachments;

  /// The function checks if the required attachment type is in the list
  bool hasAttachments([AttachmentType? type]) {
    if (type == null) return attachments.isNotEmpty;

    return attachments.any((element) => element.type == type);
  }

  /// Finds necessary attachments
  List<AbstractAttachment> getAttachments([AttachmentType? type]) {
    if (type == null) return attachments;

    return attachments.where((element) => element.type == type).toList();
  }
}
