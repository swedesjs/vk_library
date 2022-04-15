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
class MessageForwardsCollection extends Iterable<MessageModel>
    implements Attachmentable {
  final Iterable<MessageModel> _messages;

  const MessageForwardsCollection(this._messages);

  @override
  Iterator<MessageModel> get iterator => _messages.iterator;

  /// Returns the indexth element.
  MessageModel operator [](int index) => elementAt(index);

  /// Media attachments from all forwarded messages.
  List<Attachment> get attachments =>
      expand((element) => element.attachments).toList();

  List<MessageModel> get equalize => getForwards(this);

  @override
  bool hasAttachments([AttachmentType? type]) =>
      equalize.any((element) => element.hasAttachments(type));

  @override
  List<Attachment> getAttachments([AttachmentType? type]) =>
      equalize.expand((e) => e.getAttachments(type)).toList();
}
