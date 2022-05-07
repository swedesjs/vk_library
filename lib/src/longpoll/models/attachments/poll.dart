part of 'attachment.dart';

/// An object describing the survey.
///
/// https://dev.vk.com/reference/objects/poll
@JsonSerializable()
class PollAttachment extends AttachmentDefault {
  /// Date of creation.
  @DateTimeNullConverter()
  final DateTime? created;

  /// Question text.
  final String? question;

  /// Number of votes.
  final int? votes;

  /// An array of objects that contain information about the answer options.
  final List<PollAttachmentAnswers>? answers;

  /// Whether the survey is anonymous.
  final bool? anonymous;

  /// Whether the survey allows multiple choice answers.
  final bool? multiple;

  /// IDs of the answer choices selected by the current user.
  final List<int>? answerIds;

  /// Poll end date
  @DateTimeNullConverter()
  final DateTime? endDate;

  /// Whether the survey is completed.
  final bool? closed;

  /// Is the poll attached to the discussion.
  final bool? isBoard;

  /// Is it possible to edit the poll.
  final bool? canEdit;

  /// Is it possible to vote in the poll.
  final bool? canVote;

  /// Can I complain about a survey?
  final bool? canReport;

  /// Is it possible to share the survey.
  final bool? canShare;

  /// The identifier of the survey author.
  final int? authorId;

  /// The photo is the background of the survey snippet.
  final PhotoAttachment? photo;

  /// Poll snippet background.
  final PollAttachmentBackground? background;

  /// IDs of 3 friends who voted in the poll.
  final List<int>? friends;

  // @nodoc
  final bool? disableUnvote;
  final String? embedHash;

  PollAttachment({
    required int id,
    required int ownerId,
    this.created,
    this.question,
    this.votes,
    this.answers,
    this.anonymous,
    this.multiple,
    this.answerIds,
    this.endDate,
    this.closed,
    this.isBoard,
    this.canEdit,
    this.canVote,
    this.canReport,
    this.canShare,
    this.authorId,
    this.photo,
    this.background,
    this.friends,
    this.disableUnvote,
    this.embedHash,
  }) : super(
          type: AttachmentType.poll,
          id: id,
          ownerId: ownerId,
          accessKey: null,
        );

  factory PollAttachment.fromJson(Map<String, dynamic> json) =>
      _$PollAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PollAttachmentToJson(this);
}

@JsonSerializable()
class PollAttachmentAnswers {
  /// Answer identifier.
  final int? id;

  /// Text answer.
  final String? text;

  /// Number of upvotes for this answer.
  final int? votes;

  /// Answer rating.
  final double? rate;

  PollAttachmentAnswers({this.id, this.text, this.votes, this.rate});

  factory PollAttachmentAnswers.fromJson(Map<String, dynamic> json) =>
      _$PollAttachmentAnswersFromJson(json);

  Map<String, dynamic> toJson() => _$PollAttachmentAnswersToJson(this);
}

@JsonSerializable()
class PollAttachmentBackground {
  /// Background ID.
  final int? id;

  /// Background type.
  final PollAttachmentBackgroundType? type;

  /// (for [type] = [PollAttachmentBackgroundType.gradient]) the angle of the gradient along the x-axis.
  final int? angle;

  /// The replacement color HEX code (without the #).
  final String? color;

  /// (for [type] = [PollAttachmentBackgroundType.tile]) the width of the pattern tile.
  final int? width;

  /// (for [type] = [PollAttachmentBackgroundType.tile]) the height of the pattern tile.
  final int? height;

  /// (for [type] = [PollAttachmentBackgroundType.tile]) pattern tile image. An array of objects.
  final List<Map<String, dynamic>>? images;

  /// (for [type] = [PollAttachmentBackgroundType.gradient]) gradient points.
  final List<PollAttachmentBackgroundPoints>? points;

  PollAttachmentBackground({
    this.id,
    this.type,
    this.angle,
    this.color,
    this.width,
    this.height,
    this.images,
    this.points,
  });

  factory PollAttachmentBackground.fromJson(Map<String, dynamic> json) =>
      _$PollAttachmentBackgroundFromJson(json);

  Map<String, dynamic> toJson() => _$PollAttachmentBackgroundToJson(this);
}

enum PollAttachmentBackgroundType { gradient, tile }

@JsonSerializable()
class PollAttachmentBackgroundPoints {
  /// Point position.
  final num? position;

  /// The HEX code for the color of the dot.
  final String? color;

  PollAttachmentBackgroundPoints({this.position, this.color});

  factory PollAttachmentBackgroundPoints.fromJson(Map<String, dynamic> json) =>
      _$PollAttachmentBackgroundPointsFromJson(json);

  Map<String, dynamic> toJson() => _$PollAttachmentBackgroundPointsToJson(this);
}
