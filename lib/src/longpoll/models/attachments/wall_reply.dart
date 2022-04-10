part of 'attachment.dart';

@JsonSerializable()
class WallReplyAttachment extends Attachment implements CommentObject {
  /// Identifier of the post on which the comment was left.
  final int? postId;

  /// ID of the owner of the wall on which the comment was left.
  final int? ownerId;
  @JsonKey(fromJson: transformAttachments)
  @override
  final List<Attachment>? attachments;
  @override
  final DateTime? date;
  @override
  final CommentObjectDonut? donut;
  @override
  final int? fromId;
  @override
  final int? id;
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
    this.postId,
    this.ownerId,
    this.attachments,
    this.date,
    this.donut,
    this.fromId,
    this.id,
    this.parentsStack,
    this.replyToComment,
    this.replyToUser,
    this.text,
    this.thread,
  }) : super(type: AttachmentType.sticker);

  factory WallReplyAttachment.fromJson(Map<String, dynamic> json) =>
      _$WallReplyAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WallReplyAttachmentToJson(this);
}
