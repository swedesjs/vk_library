import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vk_library/vk_library.dart';

import 'attachmentable.dart';

/// The function collects all possible forwarded messages into one list
List<MessageModel> getForwards(Iterable<MessageModel> rawForwards) {
  final forwards = <MessageModel>[];

  for (final forward in rawForwards) {
    forwards
      ..add(forward)
      ..addAll(getForwards(forward.forwards));
  }

  return forwards;
}

/// A class with helper functions for working with the list of forwarded messages
class MessageForwardsCollection extends DelegatingList<MessageModel>
    implements Attachmentable {
  const MessageForwardsCollection(super.base);

  /// Media attachments from all forwarded messages.
  @override
  List<AbstractAttachment> get attachments =>
      expand((element) => element.attachments).toList();

  List<MessageModel> get equalize => getForwards(this);

  @override
  bool hasAttachments([AttachmentType? type]) =>
      equalize.any((element) => element.hasAttachments(type));

  @override
  List<AbstractAttachment> getAttachments([AttachmentType? type]) =>
      equalize.expand((e) => e.getAttachments(type)).toList();
}

class MessageForwardsCollectionConverter
    extends JsonConverter<MessageForwardsCollection, List<dynamic>> {
  const MessageForwardsCollectionConverter();

  @override
  MessageForwardsCollection fromJson(List<dynamic> json) {
    return MessageForwardsCollection(
        json.cast<Map<String, dynamic>>().map(MessageModel.fromJson).toList());
  }

  @override
  List<Map<String, dynamic>> toJson(MessageForwardsCollection object) =>
      object.map((e) => e.toJson()).toList();
}
