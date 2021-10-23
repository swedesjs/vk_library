part of vk_library;

/// Enum for the field [GroupObject.isClosed]
enum GroupIsClosed {
  /// The group is open.
  OPEN,

  /// The group is closed.
  CLOSED,

  /// The group is private.
  PRIVATE,
}

/// Enum for the field [GroupObject.deactivated]
enum DeactivatedGroup {
  /// Community deleted
  DELETED,

  /// Community blocked
  BANNED,
}

/// Enum for the field [GroupObject.adminLevel]
enum AuthorityLevelGroup {
  /// Community moderator.
  MODERATOR,

  /// Community editor.
  EDITOR,

  /// Community administrator.
  ADMINISTRATOR,
}

/// Enum for the field [GroupObject.type]
enum CommunityType {
  /// Group.
  GROUP,

  /// Public page
  PAGE,

  /// Event.
  EVENT,
}

/// Enum for the field [GroupObject.age_limits]
enum AgeLimits {
  /// No restrictions
  NO,

  /// Restriction at the age of 16 or more
  SIXTEEN,

  /// Restriction at the age of 18 and over
  EIGHTEEN,
}

/// Interface for the [GroupObject.addresses] field
class GroupObjectAddresses {
  /// The object that is used for the interface
  final Json object;

  const GroupObjectAddresses(this.object);

  /// Is the block of addresses included in the community
  bool get isEnabled => object["is_enabled"];

  /// Primary address identifier.
  int get mainAddressId => object["main_address_id"];
}

/// Interface for the [GroupObject.banInfo] field
class GroupObjectBanInfo {
  /// The object that is used for the interface
  final Json object;

  const GroupObjectBanInfo(this.object);

  /// Lock expiration date in unixtime format.
  int get endDate => object["end_date"];

  /// Comment on blocking.
  String get comment => object["comment"];
}

/// Interface for the [GroupObject.city] field
class GroupObjectCity {
  /// The object that is used for the interface
  final Json object;
  const GroupObjectCity(this.object);

  /// City identifier.
  int get id => object["id"];

  /// City name.
  String? get title => object["title"];
}

/// Interface for the [GroupObject.country] field
class GroupObjectCountry {
  /// The object that is used for the interface
  final Json object;
  const GroupObjectCountry(this.object);

  /// Country identifier.
  int get id => object["id"];

  /// Country name.
  String? get title => object["title"];
}

/// Interface for the [GroupObject.cropPhoto] field
class GroupObjectCropPhoto extends ProfileObjectCropPhoto {
  const GroupObjectCropPhoto(Json object) : super(object);

  /// Cropped out photo of the community.
  @override
  GroupObjectCropPhotoFieldCrop get crop =>
      GroupObjectCropPhotoFieldCrop(object["crop"]);
}

/// Interface for the [GroupObjectCropPhoto.crop] field
class GroupObjectCropPhotoFieldCrop extends ProfileObjectCropPhotoFieldCrop {
  const GroupObjectCropPhotoFieldCrop(Json object) : super(object);
}

/// Interface for the [GroupObject.cover] field
class GroupObjectCover {
  /// The object that is used for the interface
  final Json object;
  const GroupObjectCover(this.object);

  /// Information about whether the cover is included.
  bool get enabled => object["enabled"] == 1;

  /// Copies of cover images.
  List<GroupObjectCoverImages> get images => (object["images"] as List)
      .cast<Json>()
      .map((e) => GroupObjectCoverImages(e))
      .toList();
}

/// Interface for the [GroupObjectCover.images] field
class GroupObjectCoverImages {
  /// The object that is used for the interface
  final Json object;
  const GroupObjectCoverImages(this.object);

  /// Copy URL.
  String get url => object["url"];

  /// Copy width.
  int get width => object["width"];

  /// Copy height.
  int get height => object["height"];
}

/// The interface contains information about the VK community.
class GroupObject implements PhotoSizesObject {
  /// The object that is used for the interface
  @override
  final Json object;

  const GroupObject(this.object);

  /// Community ID.
  int get id => object["id"];

  /// Community name.
  String get name => object["name"];

  /// A short address, such as `apiclub`.
  String get screenName => object["screen_name"];

  /// Is the community closed.
  GroupIsClosed? get isClosed {
    switch (object["is_closed"]) {
      case 0:
        return GroupIsClosed.OPEN;
      case 1:
        return GroupIsClosed.CLOSED;
      case 2:
        return GroupIsClosed.PRIVATE;
    }
  }

  /// Returned if the community has been deleted or blocked.
  DeactivatedProfile? get deactivated {
    switch (object["deactivated"]) {
      case "deleted":
        return DeactivatedProfile.DELETED;
      case "banned":
        return DeactivatedProfile.BANNED;
    }
  }

  /// Information about whether the current user is a manager.
  bool get isAdmin => object["is_admin"] == 1;

  /// Authority level of the current user
  AuthorityLevelGroup? get adminLevel {
    switch (object["admin_level"]) {
      case 1:
        return AuthorityLevelGroup.MODERATOR;
      case 2:
        return AuthorityLevelGroup.EDITOR;
      case 3:
        return AuthorityLevelGroup.ADMINISTRATOR;
    }
  }

  /// Information about whether the current user is a member.
  bool get isMember => object["is_member"] == 1;

  /// Information about whether the current user is an advertiser.
  bool get isAdvertiser => object["is_advertiser"] == 1;

  /// The ID of the user who sent the invitation to the community.
  ///
  /// The field is returned only for the `groups.getInvites` method.
  int? get invitedBy => object["invited_by"];

  /// Community type.
  ///
  /// Returns enum [CommunityType]
  CommunityType? get type {
    switch (object["type"]) {
      case "group":
        return CommunityType.GROUP;
      case "page":
        return CommunityType.PAGE;
      case "event":
        return CommunityType.EVENT;
    }
  }

  /// Main photo URL with size 50x50px
  @override
  String get photo_50 => object["photo_50"];

  /// The URL of the main photo with a size of 100x100px.
  @override
  String get photo_100 => object["photo_100"];

  /// The URL of the main photo in the maximum size.
  @override
  String get photo_200 => object["photo_200"];

  /// Public subject line. For groups, a string value is returned, whether the group is open or not, and for events, the start date.
  String? get activity => object["activity"];

  /// Information about community addresses. An instance of the [GroupObjectAddresses] interface is returned
  GroupObjectAddresses? get addresses {
    final addresses = object["addresses"];
    if (addresses != null) return GroupObjectAddresses(addresses);
  }

  /// Age limit.
  AgeLimits? get ageLimits {
    switch (object["age_limits"]) {
      case 1:
        return AgeLimits.NO;
      case 2:
        return AgeLimits.SIXTEEN;
      case 3:
        return AgeLimits.SIXTEEN;
    }
  }

  /// Information about the blacklisting of the community (the field is returned only when requesting information about one community).
  GroupObjectBanInfo? get banInfo {
    final ban_info = object["ban_info"];
    if (ban_info != null) return GroupObjectBanInfo(ban_info);
  }

  /// Information about whether the current user can create a new discussion in the group.
  bool? get canCreateTopic => _switchCase(object["can_create_topic"]);

  /// Information about whether the current user can write a message to the community.
  bool? get canMessage => _switchCase(object["can_message"]);

  /// Information about whether the current user can post on the community wall.
  bool? get canPost => _switchCase(object["can_post"]);

  /// Information about whether it is allowed to see other people's posts on the group wall.
  bool? get canSeeAllPosts => _switchCase(object["can_see_all_posts"]);

  /// Information about whether the current user can upload documents to the group.
  bool? get canUploadDoc => _switchCase(object["can_upload_doc"]);

  /// Information about whether the current user can upload videos to the group.
  bool? get canUploadVideo => _switchCase(object["can_upload_video"]);

  /// The city listed in the community info.
  GroupObjectCity? get city {
    final city = object["city"];
    if (city != null) return GroupObjectCity(city);
  }

  /// The community count object can include any set of the following fields: `photos`, `albums`, `audios`, `videos`, `topics`, `docs`.
  // TODO: Find out what it is
  Json? get counters => object["counters"];

  /// The country listed in the community info.
  GroupObjectCountry? get country {
    final country = object["country"];
    if (country != null) return GroupObjectCountry(country);
  }

  /// Community cover.
  GroupObjectCover? get cover {
    final cover = object["cover"];
    if (cover != null) return GroupObjectCover(cover);
  }

  /// Returns data about the points at which the profile and thumbnail photos of the community were cropped.
  GroupObjectCropPhoto? get cropPhoto {
    final cropPhoto = object["crop_photo"];
    if (cropPhoto != null) return GroupObjectCropPhoto(cropPhoto);
  }

  /// Community description text.
  String? get description => object["description"];

  /// The ID of the pinned entry. You can get additional data about a post using the [wall.getById](https://vk.com/dev/wall.getById) method, passing in the posts field `{group_id} _ {post_id}`.
  int? get fixedPost => object["fixed_post"];

  /// Information about whether the community has a master photo.
  bool? get hasPhoto => _switchCase(object["has_photo"]);

  /// Information about whether the community is bookmarked by the current user.
  bool? get isFavorite => _switchCase(object["is_favorite"]);

  /// Information about whether the community is hidden from the current user's news feed.
  bool? get isHiddenFromFeed => _switchCase(object["is_hidden_from_feed"]);

  /// Information about whether posts from this community are blocked (for the current user).
  bool? get isMessagesBlocked => _switchCase(object["is_messages_blocked"]);
}
