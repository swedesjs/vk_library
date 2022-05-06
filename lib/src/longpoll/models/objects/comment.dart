part of 'objects.dart';

/// Object describing the comments on the wall
///
/// https://dev.vk.com/reference/objects/comment
@JsonSerializable()
class CommentObject {
  /// Comment ID.
  final int? id;

  /// Comment author ID.
  final int? fromId;

  /// Date the comment was created.
  @DateTimeNullConverter()
  final DateTime? date;

  /// Comment text.
  final String? text;

  /// Information about VK Donut.
  final CommentObjectDonut? donut;

  /// The ID of the user or community that the current comment is replying to (if applicable).
  final int? replyToUser;

  /// ID of the comment that the current comment was replying to (if applicable).
  final int? replyToComment;

  /// Comment media attachments (photos, links, etc.).
  @AttachmentConverter()
  final List<Attachment>? attachments;

  /// An array of parent comment IDs.
  final List<int>? parentsStack;

  /// Information about the nested comment thread.
  final CommentObjectThread? thread;

  CommentObject({
    this.id,
    this.fromId,
    this.date,
    this.text,
    this.donut,
    this.replyToUser,
    this.replyToComment,
    this.attachments,
    this.parentsStack,
    this.thread,
  });

  factory CommentObject.fromJson(Map<String, dynamic> json) =>
      _$CommentObjectFromJson(json);

  Map<String, dynamic> toJson() => _$CommentObjectToJson(this);
}

@JsonSerializable()
class CommentObjectDonut {
  /// Whether the commentator is a VK Donut subscriber.
  final bool? isDon;

  /// A stub for users who have not subscribed to VK Donut.
  final String? placeholder;

  CommentObjectDonut({
    this.isDon,
    this.placeholder,
  });

  factory CommentObjectDonut.fromJson(Map<String, dynamic> json) =>
      _$CommentObjectDonutFromJson(json);

  Map<String, dynamic> toJson() => _$CommentObjectDonutToJson(this);
}

@JsonSerializable()
class CommentObjectThread {
  /// The number of comments in the thread.
  final int? count;

  /// Array of post comment objects.
  final List<CommentObject>? items;

  /// Whether the current user can leave comments in this thread.
  final bool? canPost;

  /// Whether to display the "reply" button in the thread.
  final bool? showReplyButton;

  /// Whether communities can leave comments in a thread.
  final bool? groupsCanPost;

  CommentObjectThread({
    this.count,
    this.items,
    this.canPost,
    this.showReplyButton,
    this.groupsCanPost,
  });

  factory CommentObjectThread.fromJson(Map<String, dynamic> json) =>
      _$CommentObjectThreadFromJson(json);

  Map<String, dynamic> toJson() => _$CommentObjectThreadToJson(this);
}
