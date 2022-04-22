part of 'attachment.dart';

/// Object describing the video
///
/// https://dev.vk.com/reference/objects/video
@JsonSerializable()
class VideoAttachment extends AttachmentDefault {
  /// Title of the video.
  final String? title;

  /// Video description text.
  final String? description;

  /// The length of the video in seconds.
  @JsonKey(fromJson: durationNullFromJson, toJson: durationNullToJson)
  final Duration? duration;

  /// Cover image.
  final List<VideoAttachmentImage>? image;

  /// Image of the first frame.
  final List<GeneralClassAttachmentImage>? firstFrame;

  /// The date the video was created.
  @JsonKey(fromJson: dateNullFromJson)
  final DateTime? date;

  /// The date the video was added by the user or group.
  @JsonKey(fromJson: dateNullFromJson)
  final DateTime? addingDate;

  /// Number of video views.
  final int? views;

  /// If the video is external, the number of views on VKontakte.
  final int? localViews;

  /// The number of comments on the video.
  final int? comments;

  /// The URL of the page with the player that can be used to play the video in the browser. Flash and HTML5 are supported, the player is always scaled to fit the window.
  final String? player;

  /// Platform name (for videos added from external sites).
  final String? platform;

  /// Whether the user can add a video to himself.
  @JsonKey(fromJson: whetherNull)
  final bool? canAdd;

  /// Is the video private?
  final bool isPrivate;

  /// Is the video in progress?
  final int? processing;

  /// Is the video bookmarked by the current user?
  final bool? isFavorite;

  /// Whether the user can comment on the video.
  @JsonKey(fromJson: whetherNull)
  final bool? canComment;

  /// Whether the user can edit the video.
  @JsonKey(fromJson: whetherNull)
  final bool? canEdit;

  /// Whether the user can add the video to the "Like" list.
  @JsonKey(fromJson: whetherNull)
  final bool? canLike;

  /// Whether the user can repost the video.
  @JsonKey(fromJson: whetherNull)
  final bool? canRepost;

  /// Whether the user can subscribe to the author of the video.
  @JsonKey(fromJson: whetherNull)
  final bool? canSubscribe;

  /// Whether the user can add the video to favorites.
  @JsonKey(fromJson: whetherNull)
  final bool? canAddToFaves;

  /// Whether the user can attach an action button to the video.
  @JsonKey(fromJson: whetherNull)
  final bool? canAttachLink;

  /// Video width.
  final int? width;

  /// Video height.
  final int? height;

  /// The ID of the user who uploaded the video, if it was uploaded to the group by one of the members.
  final int? userId;

  /// Whether the video is being converted.
  @JsonKey(fromJson: whetherNull)
  final bool? converting;

  /// Whether the video has been added to the user's albums.
  @JsonKey(fromJson: whetherNull)
  final bool? added;

  /// Whether the user is following the author of the video.
  @JsonKey(fromJson: whetherNull)
  final bool? isSubscribed;

  /// Is the video looped?
  @JsonKey(fromJson: fieldReturnedInCase)
  final bool repeat;

  /// Video recording type.
  @JsonKey(name: 'type')
  final VideoAttachmentType? videoType;

  /// Donate balance in live broadcast.
  final int? balance;

  /// Live broadcast status.
  final VideoAttachmentLiveStatus? liveStatus;

  /// Whether the video is a live broadcast.
  @JsonKey(fromJson: fieldReturnedInCase)
  final bool live;

  /// The field indicates that the broadcast will begin soon.
  final int? upcoming;

  /// The number of live viewers.
  final int? spectators;

  /// Contains the Like object.
  final VideoAttachmentLikes? likes;

  /// Contains the repost object.
  final VideoAttachmentReposts? reposts;

  VideoAttachment({
    required int id,
    required int ownerId,
    String? accessKey,
    this.title,
    this.description,
    this.duration,
    this.image,
    this.firstFrame,
    this.date,
    this.addingDate,
    this.views,
    this.localViews,
    this.comments,
    this.player,
    this.platform,
    this.canAdd,
    this.isPrivate = false,
    this.processing,
    this.isFavorite,
    this.canComment,
    this.canEdit,
    this.canLike,
    this.canRepost,
    this.canSubscribe,
    this.canAddToFaves,
    this.canAttachLink,
    this.width,
    this.height,
    this.userId,
    this.converting,
    this.added,
    this.isSubscribed,
    required this.repeat,
    this.videoType,
    this.balance,
    this.liveStatus,
    required this.live,
    this.upcoming,
    this.spectators,
    this.likes,
    this.reposts,
  }) : super(
          type: AttachmentType.video,
          id: id,
          ownerId: ownerId,
          accessKey: accessKey,
        );

  factory VideoAttachment.fromJson(Map<String, dynamic> json) =>
      _$VideoAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoAttachmentToJson(this);
}

@JsonSerializable()
class VideoAttachmentImage extends GeneralClassAttachmentImage {
  /// The field is returned if the padded image always contains 1.
  @JsonKey(fromJson: fieldReturnedInCase)
  final bool withPadding;

  VideoAttachmentImage({
    int? height,
    String? url,
    int? width,
    required this.withPadding,
  }) : super(height: height, url: url, width: width);

  factory VideoAttachmentImage.fromJson(Map<String, dynamic> json) =>
      _$VideoAttachmentImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoAttachmentImageToJson(this);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum VideoAttachmentType { video, musicVideo, movie }

enum VideoAttachmentLiveStatus { waiting, started, finished, failed, upcoming }

@JsonSerializable()
class VideoAttachmentLikes {
  /// The number of likes.
  final int? likes;

  /// Whether the video has been added to the current user's "Like" list.
  @JsonKey(fromJson: whetherNull)
  final bool? userLikes;

  VideoAttachmentLikes({this.likes, this.userLikes});

  factory VideoAttachmentLikes.fromJson(Map<String, dynamic> json) =>
      _$VideoAttachmentLikesFromJson(json);

  Map<String, dynamic> toJson() => _$VideoAttachmentLikesToJson(this);
}

@JsonSerializable()
class VideoAttachmentReposts {
  /// Counter of the total number of reposts. Contains the amount of reposts on the wall and in private messages.
  final int? count;

  /// Repost counter on the wall.
  final int? wallCount;

  /// Repost counter in private messages.
  final int? mailCount;

  /// Information about whether the current user has reposted this video.
  final int? userReposted;

  VideoAttachmentReposts({
    this.count,
    this.wallCount,
    this.mailCount,
    this.userReposted,
  });

  factory VideoAttachmentReposts.fromJson(Map<String, dynamic> json) =>
      _$VideoAttachmentRepostsFromJson(json);

  Map<String, dynamic> toJson() => _$VideoAttachmentRepostsToJson(this);
}
