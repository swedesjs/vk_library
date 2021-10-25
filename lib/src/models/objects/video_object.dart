part of vk_library;

/// The interface describing the video.
class VideoObject {
  /// The object that is used for the interface
  final Json object;
  const VideoObject(this.object);

  /// Video recording identifier.
  int get id => object["id"];

  /// The identifier of the owner of the video.
  int get ownerId => object["owner_id"];

  /// The title of the video.
  String get title => object["title"];

  /// Video description text.
  String get description => object["description"];

  /// Duration of the video in seconds.
  int get duration => object["duration"];

  /// Cover image.
  List<VideoObjectImage> get image => (object["image"] as List)
      .cast<Json>()
      .map((e) => VideoObjectImage(e))
      .toList();

  /// Image of the first frame.
  List<VideoObjectFirstFrame> get firstFrame => (object["first_frame"] as List)
      .cast<Json>()
      .map((e) => VideoObjectFirstFrame(e))
      .toList();

  /// The date the video was created in `Unixtime` format.
  int get date => object["date"];

  /// The date the video was added by the user or group in `Unixtime` format.
  int get addingDate => object["adding_date"];

  /// The number of views of the video.
  int get views => object["views"];

  /// If the video is external, the number of views in VK.
  int get localViews => object["local_views"];

  /// The number of comments for the video.
  int get comments => object["comments"];

  /// The URL of the player page that can be used to play the video in the browser. Supported `flash` and `html5`, the player is always scaled to fit the window.
  String get player => object["player"];

  /// Platform name (for videos uploaded from external sites).
  String get platform => object["platform"];

  /// Whether the user can add a video to himself.
  /// - `false` - Cannot add.
  /// - `true` - May add.
  bool get canAdd => object["can_add"] == 1;

  /// `true` - if the video is private.
  bool get isPrivate => object["is_private"] != null;

  /// Access key to the object. See [Data access key access_key](https://vk.com/dev/access_key) for details.
  String get accessKey => object["access_key"];

  /// `true` - if the video is being processed.
  bool get processing => object["processing"] != null;

  /// `true` if the object is bookmarked by the current user.
  bool get isFavorite => object["is_favorite"];

  /// Whether the user can comment on the video.
  /// - `false` - Cannot comment.
  /// - `true` - Can comment.
  bool get canComment => object["can_comment"] == 1;

  /// Whether the user can edit the video.
  /// - `false` - Cannot edit.
  /// - `true` - Can edit.
  bool get canEdit => object["can_edit"] == 1;

  /// Whether the user can add a video to the `Like` list.
  /// - `false` - Cannot add.
  /// - `true` - May add.
  bool get canLike => object["can_like"] == 1;

  /// Whether the user can repost the video.
  /// - `false` - Cannot repost.
  /// - `true` - Can repost.
  bool get canRepost => object["can_repost"] == 1;

  /// Whether the user can follow the author of the video.
  /// - `false` - Cannot subscribe.
  /// - `true` - Can subscribe.
  bool get canSubscribe => object["can_subscribe"] == 1;

  /// Whether the user can add the video to favorites.
  /// - `false` - Cannot add.
  /// - `true` - May add.
  bool get canAddToFaves => object["can_add_to_faves"] == 1;

  /// Whether the user can attach an action button to the video.
  /// - `false` - Cannot attach.
  /// - `true` - Can be attached.
  bool get canAttachLink => object["can_attach_link"] == 1;

  /// Video width.
  int get width => object["width"];

  /// Video height.
  int get height => object["height"];

  /// The ID of the user who uploaded the video, if it was uploaded to the group by one of the members.
  int? get userId => object["user_id"];

  /// Whether the video is being converted.
  /// - `false` - Not converted.
  /// - `true` - Converted.
  bool get converting => object["converting"] == 1;

  /// Whether the video has been added to the user's albums.
  /// - `false` - Not added.
  /// - `true` - Added.
  bool get added => object["added"] == 1;

  /// Whether the user is following the author of the video.
  /// - `false` - Not signed.
  /// - `true` - Signed.
  bool get isSubscribed => object["is_subscribed"] == 1;

  /// `true` if the video is looped.
  bool get repeat => object["repeat"] != null;

  /// Video recording type.
  VideoObjectType? get type {
    switch (object["type"]) {
      case "video":
        return VideoObjectType.VIDEO;
      case "music_video":
        return VideoObjectType.MUSIC_VIDEO;
      case "movie":
        return VideoObjectType.MOVIE;
    }
  }

  /// Balance of donations in live broadcast.
  int get balance => object["balance"];

  /// Live stream status.
  VideoObjectLiveStatus? get liveStatus {
    switch (object["live_status"]) {
      case "waiting":
        return VideoObjectLiveStatus.WAITING;
      case "started":
        return VideoObjectLiveStatus.STARTED;
      case "finished":
        return VideoObjectLiveStatus.FINISHED;
      case "failed":
        return VideoObjectLiveStatus.FAILED;
      case "upcoming":
        return VideoObjectLiveStatus.UPCOMING;
    }
  }

  /// `true` if the video is a live video. Pay attention in this case the field [duration] = `0`.
  bool get live => object["live"] != null;

  /// (for [live] = `true`). The field indicates that the broadcast will start soon.
  bool? get upcoming => _switchCase(object["upcoming"]);

  /// The number of viewers of the live broadcast.
  int? get spectators => object["spectators"];

  /// Contains a `like` object.
  VideoObjectLikes get likes => VideoObjectLikes(object["likes"]);

  /// Contains a repost object.
  VideoObjectReposts get reposts => VideoObjectReposts(object["reposts"]);
}

/// The interface for the [VideoObject.image] field.
class VideoObjectImage extends VideoObjectFirstFrame {
  /// The object that is used for the interface
  @override
  final Json object;
  const VideoObjectImage(this.object) : super(object);

  /// The field is returned if the skip image always contains `1`.
  int? get withPadding => object["with_padding"];
}

/// The interface for the [VideoObject.firstFrame] field.
class VideoObjectFirstFrame {
  /// The object that is used for the interface
  final Json object;
  const VideoObjectFirstFrame(this.object);

  /// Image height.
  int get height => object["height"];

  /// Link to the image.
  String get url => object["url"];

  /// The width of the image.
  int get width => object["width"];
}

/// Enum for the [VideoObject.type] field
enum VideoObjectType {
  /// Normal video.
  VIDEO,

  /// Music video.
  MUSIC_VIDEO,

  /// Cinema.
  MOVIE
}

/// Enum for the [VideoObject.liveStatus] field
enum VideoObjectLiveStatus {
  /// Waiting.
  WAITING,

  /// Started.
  STARTED,

  /// Finished.
  FINISHED,

  /// Failed.
  FAILED,

  /// Upcoming.
  UPCOMING
}

/// The interface for the [VideoObject.likes] field.
class VideoObjectLikes {
  /// The object that is used for the interface
  final Json object;
  const VideoObjectLikes(this.object);

  /// Number of likes.
  int get count => object["count"];

  /// Is the video added to the list `I like` the current user.
  /// - `false` - Not added.
  /// - `true` - Added.
  bool get userLikes => object["user_likes"] == 1;
}

/// The interface for the [VideoObject.reposts] field.
class VideoObjectReposts {
  /// The object that is used for the interface
  final Json object;
  const VideoObjectReposts(this.object);

  /// Counter of the total number of reposts. Contains the amount of reposts on the wall and in private messages.
  int get count => object["count"];

  /// Repost counter on the wall.
  int get wallCount => object["wall_count"];

  /// Counter of reposts to private messages.
  int get mailCount => object["mail_count"];

  /// Information about whether the current user has repost this video.
  int get userReposted => object["user_reposted"];
}
