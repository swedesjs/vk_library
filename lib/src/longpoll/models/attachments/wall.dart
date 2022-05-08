part of 'attachment.dart';

/// An object describing a post on a user's or community's wall
///
/// https://dev.vk.com/reference/objects/post
@JsonSerializable()
class WallAttachment extends AttachmentDefault {
  /// Identifier of the author of the entry (on whose behalf the entry was published).
  final int? fromId;

  /// ID of the admin who posted the post (only returned for communities when requested with an admin access key). Returned on posts published less than 24 hours ago.
  final int? createdBy;

  /// Posting time.
  @DateTimeNullConverter()
  final DateTime? date;

  /// The text of the entry.
  final String? text;

  /// The ID of the owner of the post in response to which the current one was left.
  final int? replyOwnerId;

  /// Identifier of the record in response to which the current one was left.
  final int? replyPostId;

  /// 1 if the post was created with the Friends Only option.
  final int? friendsOnly;

  /// Post comment information.
  final WallAttachmentComments? comments;

  /// Material source.
  final WallAttachmentCopyright? copyright;

  /// Information about the likes for the post.
  final WallAttachmentLikes? likes;

  /// Information about the reposts of the entry (“Tell friends”).
  final WallAttachmentReposts? reposts;

  /// Information about post views.
  final WallAttachmentViews? views;

  /// Post type.
  final WallAttachmentPostType? postType;

  /// The field is returned only for Standalone applications with an access key obtained in [Implicit Flow](https://dev.vk.com/api/access-token/implicit-flow-user).
  ///
  /// Information about the posting method. Description of the object is [on a separate page](https://dev.vk.com/reference/objects/post-source).
  final WallAttachmentPostSource? postSource;

  /// Entry media attachments
  @AttachmentConverter()
  final List<Attachment> attachments;

  /// Location information.
  final WallAttachmentGeo? geo;

  /// Author ID if the entry was published on behalf of the community and signed by the user;
  final int? signerId;

  /// An array containing the history of the shares to write. Only returned if the post is a repost. Each of the array objects is, in turn, a standard-format record object.
  final List<Map<String, dynamic>>? copyHistory;

  /// Whether the current user can pin a post
  @JsonKey(fromJson: whetherNull)
  final bool? canPin;

  /// Information about whether the current user can delete the post
  @JsonKey(fromJson: whetherNull)
  final bool? canDelete;

  /// Whether the current user can edit the entry.
  @JsonKey(fromJson: whetherNull)
  final bool? canEdit;

  /// Information that the entry is pinned.
  final int? isPinned;

  /// Information about whether the entry contains the mark "advertising"
  @JsonKey(fromJson: whetherNull)
  final bool? markedAsAds;

  /// true if the item is bookmarked by the current user.
  final bool isFavorite;

  /// Recording information VK Donut.
  final WallAttachmentDonut? donut;

  /// Delayed entry ID. This field is returned when the entry was on the timer.
  final int? postponedId;

  WallAttachment({
    required int id,
    required int ownerId,
    String? accessKey,
    this.fromId,
    this.createdBy,
    this.date,
    this.text,
    this.replyOwnerId,
    this.replyPostId,
    this.friendsOnly,
    this.comments,
    this.copyright,
    this.likes,
    this.reposts,
    this.views,
    this.postType,
    this.postSource,
    this.attachments = const [],
    this.geo,
    this.signerId,
    this.copyHistory,
    this.canPin,
    this.canDelete,
    this.canEdit,
    this.isPinned,
    this.markedAsAds,
    this.isFavorite = false,
    this.donut,
    this.postponedId,
    this.toId,
    this.shortTextRate,
    this.carouselOffset,
    this.from,
    this.zoomText,
  }) : super(
          type: AttachmentType.wall,
          id: id,
          ownerId: ownerId,
          accessKey: accessKey,
        );

  // @nodoc
  final int? toId;
  final double? shortTextRate;
  final int? carouselOffset;
  final Map<String, dynamic>? from;
  final bool? zoomText;

  factory WallAttachment.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WallAttachmentToJson(this);
}

enum WallAttachmentPostType { post, copy, reply, postpone, suggest }

@JsonSerializable()
class WallAttachmentComments {
  /// The number of comments.
  final int? count;

  /// Information about whether the current user can comment on the post.
  @JsonKey(fromJson: whetherNull)
  final bool? canPost;

  /// Information about whether communities can comment on a post.
  final int? groupsCanPost;

  /// Can the current user close comments on a post.
  final bool? canClose;

  /// Whether the current user can open comments on the post.
  final bool? canOpen;

  WallAttachmentComments({
    this.count,
    this.canPost,
    this.groupsCanPost,
    this.canClose,
    this.canOpen,
  });

  factory WallAttachmentComments.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentCommentsFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentCommentsToJson(this);
}

@JsonSerializable()
class WallAttachmentCopyright {
  final int? id;
  final String? link, name, type;

  WallAttachmentCopyright({this.id, this.link, this.name, this.type});

  factory WallAttachmentCopyright.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentCopyrightFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentCopyrightToJson(this);
}

@JsonSerializable()
class WallAttachmentLikes {
  /// Number of users who liked the post.
  final int? count;

  /// The presence of the mark "I like" from the current user.
  @JsonKey(fromJson: whetherNull)
  final bool? userLikes;

  /// Information about whether the current user can like it.
  @JsonKey(fromJson: whetherNull)
  final bool? canLike;

  /// Information about whether the current user can repost the post.
  @JsonKey(fromJson: whetherNull)
  final bool? canPublish;

  WallAttachmentLikes({
    this.count,
    this.userLikes,
    this.canLike,
    this.canPublish,
  });

  factory WallAttachmentLikes.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentLikesFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentLikesToJson(this);
}

@JsonSerializable()
class WallAttachmentReposts {
  /// The number of users who copied the entry.
  final int? count;

  /// The presence of a repost from the current user.
  @JsonKey(fromJson: whetherNull)
  final bool? userReposted;

// @nodoc
  final int? wallCount;
  final int? mailCount;

  WallAttachmentReposts({
    this.count,
    this.userReposted,
    this.wallCount,
    this.mailCount,
  });

  factory WallAttachmentReposts.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentRepostsFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentRepostsToJson(this);
}

@JsonSerializable()
class WallAttachmentViews {
  /// Number of post views.
  final int? count;

  WallAttachmentViews({this.count});

  factory WallAttachmentViews.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentViewsFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentViewsToJson(this);
}

@JsonSerializable()
class WallAttachmentPostSource {
  /// Type source.
  final WallAttachmentPostSourceType? type;

  /// Platform.
  final WallAttachmentPostSourcePlatform? platform;

  /// Action type (only for [type] = [WallAttachmentPostSourceType.vk] or [WallAttachmentPostSourceType.widget]).
  final WallAttachmentPostSourceData? data;

  /// URL of the resource from which the post was published.
  final String? url;

  WallAttachmentPostSource({
    this.type,
    this.platform,
    this.data,
    this.url,
  });

  factory WallAttachmentPostSource.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentPostSourceFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentPostSourceToJson(this);
}

enum WallAttachmentPostSourceType {
  /// The post was created through the main interface of the site https://vk.com/
  vk,

  /// The post was created via a [widget](https://dev.vk.com/widgets/overview) on a third-party site
  widget,

  /// Post created by application via API
  api,

  /// The post was created by importing an RSS feed from a third-party site.
  rss,

  /// The post was created by sending an SMS message to a special number.
  sms
}

enum WallAttachmentPostSourcePlatform { android, iphone, wphone }

@JsonEnum(fieldRename: FieldRename.snake)
enum WallAttachmentPostSourceData {
  /// Status change under username (for [WallAttachmentPostSource.type] = [WallAttachmentPostSourceType.vk]).
  profileActivity,

  /// Changing the user's profile photo (for [WallAttachmentPostSource.type] = [WallAttachmentPostSourceType.vk]).
  profilePhoto,

  /// [Comments widget](https://dev.vk.com/widgets/comments) (for [WallAttachmentPostSource.type] = [WallAttachmentPostSourceType.widget]).
  comments,

  /// ["Like" widget](https://dev.vk.com/widgets/like) (for [WallAttachmentPostSource.type] = [WallAttachmentPostSourceType.widget]).
  like,

  /// [Polls widget](https://dev.vk.com/widgets/poll) (for [WallAttachmentPostSource.type] = [WallAttachmentPostSourceType.widget]).
  poll
}

@JsonSerializable()
class WallAttachmentGeo {
  /// Place type
  final String? type;

  /// Location coordinates.
  final String? coordinates;

  /// Description of the place (if any).
  final PlaceObject? place;

  WallAttachmentGeo({this.type, this.coordinates, this.place});

  factory WallAttachmentGeo.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentGeoFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentGeoToJson(this);
}

@JsonSerializable()
class WallAttachmentDonut {
  /// The record is available only to paid subscribers of VK Donut
  final bool? isDonut;

  /// The time during which the record will be available only to paid subscribers of VK Donut.
  final int? paidDuration;

  /// A stub for users who have not subscribed to VK Donut. Displayed instead of the post content.
  final Map<String, dynamic>? placeholder;

  /// Is it possible to open a record for all users, and not just VK Donut subscribers.
  final bool? canPublishFreeCopy;

  /// Information about which VK Donut values can be changed in the entry.
  final WallAttachmentDonutEditMode? editMode;

  WallAttachmentDonut({
    this.isDonut,
    this.paidDuration,
    this.placeholder,
    this.canPublishFreeCopy,
    this.editMode,
  });

  factory WallAttachmentDonut.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentDonutFromJson(json);

  Map<String, dynamic> toJson() => _$WallAttachmentDonutToJson(this);
}

enum WallAttachmentDonutEditMode {
  /// All information about VK Donut.
  all,

  /// The time during which the recording will be available only to paid subscribers of VK Donut.
  duration
}
