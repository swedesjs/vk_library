part of 'attachment.dart';

/// Object describing the comments on the wall
///
/// https://dev.vk.com/reference/objects/attachments-message#%D0%9A%D0%BE%D0%BC%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%80%D0%B8%D0%B9%20%D0%BD%D0%B0%20%D1%81%D1%82%D0%B5%D0%BD%D0%B5%20(type%20=%20wall_reply)
@JsonSerializable()
class WallReplyAttachment extends ExternalAttachment implements CommentObject {
  @override
  final int id;

  final int ownerId;

  /// Identifier of the post on which the comment was left.
  final int? postId;

  @AttachmentConverter()
  @override
  final List<AbstractAttachment>? attachments;

  @DateTimeNullConverter()
  @override
  final DateTime? date;

  @override
  final CommentObjectDonut? donut;

  @override
  final int? fromId;

  @override
  final List<int>? parentsStack;

  @override
  final int? replyToComment;

  @override
  final int? replyToUser;

  @override
  final String? text;

  @override
  final CommentObjectThread? thread;

  WallReplyAttachment({
    required this.id,
    required this.ownerId,
    this.postId,
    this.attachments,
    this.date,
    this.donut,
    this.fromId,
    this.parentsStack,
    this.replyToComment,
    this.replyToUser,
    this.text,
    this.thread,
    this.likes,
  }) : super(type: AttachmentType.wallReply);

  // @nodoc
  final WallAttachmentLikes? likes;

  factory WallReplyAttachment.fromJson(Map<String, dynamic> json) =>
      _$WallReplyAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WallReplyAttachmentToJson(this);
}
