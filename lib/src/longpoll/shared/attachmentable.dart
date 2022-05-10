import 'package:vk_library/vk_library.dart';

class Attachmentable {
  final List<AbstractAttachment> _attachments;

  Attachmentable(this._attachments);

  /// The function checks if the required attachment type is in the list
  bool hasAttachments([AttachmentType? type]) {
    if (type == null) return _attachments.isNotEmpty;

    return _attachments.any((element) => element.type == type);
  }

  /// Finds necessary attachments
  List<AbstractAttachment> getAttachments([AttachmentType? type]) {
    if (type == null) return _attachments;

    return _attachments.where((element) => element.type == type).toList();
  }
}
