part of vk_library;

/// Enum for the field [ProfileObject.deactivated]
enum DeactivatedProfile {
  /// User profile deleted
  DELETED,

  /// User page is locked
  BANNED,
}

/// Enum for the field [ProfileObject.friendStatus]
enum FriendStatus {
  /// Is not a friend
  IS_NOT,

  /// An application / subscription was sent to the user
  SUBMITTED,

  /// There is an incoming request / subscription from the user
  THERE_IS,

  /// Is a friend
  IS_AN
}

bool? _switchCase(dynamic value) {
  switch (value.runtimeType) {
    case int:
      return value == 1;
  }
}

/// The object contains information about the user VKontakte
class ProfileObject {
  /// The object that is used for the interface
  final Json object;

  const ProfileObject(this.object);

  /// User ID.
  int get id => object["id"];

  /// Name.
  String get firstName => object["first_name"];

  /// Surname.
  String get lastName => object["last_name"];

  /// The field is returned if the user's page is deleted or blocked.
  ///
  /// Returns the enumerations [DeactivatedProfile]
  DeactivatedProfile? get deactivated {
    switch (object["deactivated"]) {
      case "deleted":
        return DeactivatedProfile.DELETED;
      case "banned":
        return DeactivatedProfile.BANNED;
    }
  }

  /// Whether the user's profile is hidden by the privacy settings.
  bool get isClosed => object["is_closed"];

  /// Whether the current user can see the profile when [isClosed] = 1 (for example, he is a friend).
  bool get canAccessClosed => object["can_access_closed"];

  /// Content of the `About me` field from the profile.
  String? get about => object["about"];

  /// Content of the `Activity` field from the profile.
  String? get activities => object["activities"];

  /// Date of Birth. Returned in the format `D.M.YYYY` or `D.M` (if the year of birth is hidden). If the date of birth is hidden entirely, the field is missing in the response.
  String? get bdate => object["bdate"];

  /// Information about whether the current user is blacklisted.
  bool? get blacklisted => _switchCase(object["blacklisted"]);

  /// Information about whether the user is blacklisted by the current user.
  bool? get blacklistedByMe => _switchCase(object["blacklisted_by_me"]);

  /// Content of the field `Favorite books` from the user profile.
  String? get books => object["books"];

  /// Information about whether the current user can post on the wall
  bool? get canPost => _switchCase(object["can_post"]);

  /// Information about whether the current user can see other people's posts on the wall.
  bool? get canSeeAllPosts => _switchCase(object["can_see_all_posts"]);

  /// Information about whether the current user can see audio recordings.
  bool? get canSeeAudio => _switchCase(object["can_see_audio"]);

  /// Information about whether a notification will be sent to the user about a friend request from the current user.
  bool? get canSendFriendRequest =>
      _switchCase(object["can_send_friend_request"]);

  /// Information about whether the current user can send a private message.
  bool? get canWritePrivateMessage =>
      _switchCase(object["can_write_private_message"]);

  /// Information about the user's career.
  // TODO: Implement an interface for this field
  Json? get career => object["career"];

  /// Information about the city indicated on the user page in the section `Contacts`.
  // TODO: Implement an interface for this field
  Json? get city => object["city"];

  /// The number of mutual friends with the current user.
  int? get commonCount => object["common_count"];

  /// Returns data about the user's services specified in the profile, such as: `skype`,` facebook`, `twitter`,` livejournal`, `instagram`. For each service, a separate field of type string is returned containing the user's nickname.
  ///
  ///  For example:
  /// ```json
  /// {
  ///   "instagram": "username"
  /// }
  /// ```
  // TODO: Implement an interface for this field
  Json? get connections => object["connections"];

  /// Information about the user's telephone numbers.
  // TODO: Implement an interface for this field
  Json? get contacts => object["contacts"];

  /// The number of different objects the user has. The field is returned only in the `users.get` method when requesting information about one user, passing the user's `access_token`.
  // TODO: Implement an interface for this field
  Json? get counters => object["counters"];

  /// Information about the country specified on the user page in the section `Contacts`.
  // TODO: Implement an interface for this field
  Json? get country => object["country"];

  /// Returns data about the points at which the profile and thumbnail photos of the user were cut, if any.
  // TODO: Implement an interface for this field
  Json? get cropPhoto => object["crop_photo"];

  /// Short URL of the page. A string containing the short address of the page is returned (for example, `andrew`). If it is not assigned, `"id"+ user_id` is returned, for example,`id35828305`.
  String? get domain => object["domain"];

  /// Information about the user's higher education institution.
  // TODO: Implement an interface for this field
  Json? get education => object["education"];

  /// External services to which export from VK is configured (`twitter`,` facebook`, `livejournal`,` instagram`).
  dynamic get exports => object["exports"];

  /// The number of user subscribers.
  int? get followersCount => object["followers_count"];

  /// Friendship status with the user.
  ///
  /// Returns enum [FriendStatus]
  FriendStatus? get friendStatus {
    switch (object["friend_status"]) {
      case 0:
        return FriendStatus.IS_NOT;
      case 1:
        return FriendStatus.SUBMITTED;
      case 2:
        return FriendStatus.THERE_IS;
      case 3:
        return FriendStatus.IS_AN;
    }
  }

  /// Content of the `Favorite games` field from the profile.
  String? get games => object["games"];

  /// Information about whether the user's mobile phone number is known.
  bool? get hasMobile => _switchCase(object["has_mobile"]);

  /// Information about whether the user has set a profile photo.
  bool? get hasPhoto => _switchCase(object["has_photo"]);

  /// Hometown name.
  String? get homeTown => object["home_town"];

  /// Content of the field `Interests` from the profile.
  String? get interests => object["interests"];

  /// Information about whether the user is bookmarked by the current user.
  bool? get isFavorite => _switchCase(object["is_favorite"]);

  /// Information about whether the user is a friend of the current user.
  bool? get isFriend => _switchCase(object["is_friend"]);

  /// Information about whether the user is hidden from the current user's news feed.
  bool? get isHiddenFromFeed => _switchCase(object["is_hidden_from_feed"]);

  /// Whether the profile is indexed by search sites.
  bool? get isNoIndex => _switchCase(object["is_no_index"]);
}
