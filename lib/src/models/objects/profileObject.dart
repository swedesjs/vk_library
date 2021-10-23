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

/// An interface for the [ProfileObject.career] field
class ProfileObjectCareer {
  /// The object that is used for the interface
  final Json object;
  const ProfileObjectCareer(this.object);

  /// Community ID (if available, otherwise [company]).
  int? get groupId => object["group_id"];

  /// Company name (if available, otherwise [groupId]).
  String? get company => object["company"];

  /// Country identifier.
  int get countryId => object["country_id"];

  /// City ID (if available, otherwise [cityName]).
  int? get cityId => object["city_id"];

  /// City name (if available, otherwise [cityId]).
  String? get cityName => object["city_name"];

  /// Year of commencement of work.
  int get from => object["from"];

  /// Year of completion of work.
  int get until => object["until"];

  /// Position.
  String get position => object["position"];
}

/// An interface for the [ProfileObject.city] field
class ProfileObjectCity {
  /// The object that is used for the interface
  final Json object;
  const ProfileObjectCity(this.object);

  /// A city identifier that can be used to retrieve its name using the [database.getCitiesById](https://vk.com/dev/database.getCitiesById) method.
  int get id => object["id"];

  /// City name.
  String? get title => object["title"];
}

/// An interface for the [ProfileObject.connections] field
class ProfileObjectConnections {
  /// The object that is used for the interface
  final Json object;
  const ProfileObjectConnections(this.object);

  /// User's nickname in `Skype`.
  String? get skype => object["skype"];

  /// User's nickname on `Facebook`.
  String? get facebook => object["facebook"];

  /// User's nickname on `Twitter`.
  String? get twitter => object["twitter"];

  /// User's nickname in `LiveJournal`.
  String? get livejournal => object["livejournal"];

  /// User's nickname in `Instagram`.
  String? get instagram => object["instagram"];
}

bool? _switchCase(dynamic value) {
  if (value != null) return value == 1;
}

/// An interface for the [ProfileObject.contacts] field
class ProfileObjectContacts {
  /// The object that is used for the interface
  final Json object;

  const ProfileObjectContacts(this.object);

  /// User's mobile phone number (`only for Standalone applications`).
  String get mobilePhone => object["mobile_phone"];

  /// Additional phone number of the user.
  String get homePhone => object["home_phone"];
}

/// An interface for the [ProfileObject.counters] field
class ProfileObjectCounters {
  /// The object that is used for the interface
  final Json object;

  const ProfileObjectCounters(this.object);

  /// Number of photo albums.
  int get albums => object["albums"];

  /// Number of videos.
  int get videos => object["videos"];

  /// The number of audio recordings.
  int get audios => object["audios"];

  /// Number of photos.
  int get photos => object["photos"];

  /// Number of notes.
  int get notes => object["notes"];

  /// The number of friends.
  int get friends => object["friends"];

  /// The number of communities.
  int get groups => object["groups"];

  /// Number of online friends.
  int get onlineFriends => object["online_friends"];

  /// The number of mutual friends.
  int get mutualFriends => object["mutual_friends"];

  /// The number of videos with the user.
  int get userVideos => object["user_videos"];

  /// The number of subscribers.
  int get followers => object["followers"];

  /// The number of objects in the block `Interesting pages`.
  int get pages => object["pages"];
}

/// An interface for the [ProfileObject.country] field
class ProfileObjectCountry {
  /// The object that is used for the interface
  final Json object;

  const ProfileObjectCountry(this.object);

  /// Country identifier that can be used to retrieve its name using the [database.getCountriesById](https://vk.com/dev/database.getCountriesById) method.
  int get id => object["id"];

  /// The name of the country.
  String get title => object["title"];
}

/// An interface for the [ProfileObject.cropPhoto] field
class ProfileObjectCropPhoto {
  /// The object that is used for the interface
  final Json object;
  const ProfileObjectCropPhoto(this.object);

  /// The [photo](https://vk.com/dev/photo) object of the user's photo from which the main profile photo is cut.
  PhotoObject get photo => PhotoObject(object["photo"]);

  /// Clipped user photo.
  ProfileObjectCropPhotoFieldCrop get crop =>
      ProfileObjectCropPhotoFieldCrop(object["crop"]);

  /// Miniature square photograph cut from [crop] photograph.
  // TODO: Parse what it is.
  Json get rect => object["rect"];
}

/// An interface for the [ProfileObjectCropPhoto.crop] field
class ProfileObjectCropPhotoFieldCrop {
  /// The object that is used for the interface
  final Json object;
  const ProfileObjectCropPhotoFieldCrop(this.object);

  /// The x-coordinate of the upper-left corner, in percent.
  num get x => object["x"];

  /// The y-coordinate of the upper-left corner, in percent.
  num get y => object["y"];

  /// The x-coordinate of the lower-right corner, in percent.
  num get x2 => object["x2"];

  /// The y-coordinate of the lower-right corner, in percent.
  num get y2 => object["y2"];
}

/// An interface for the [ProfileObject.education] field
class ProfileObjectEducation {
  /// The object that is used for the interface
  final Json object;

  const ProfileObjectEducation(this.object);

  /// University identifier.
  int get university => object["university"];

  /// University name.
  String get universityName => object["university_name"];

  /// Faculty ID.
  int get faculty => object["faculty"];

  /// Faculty name.
  String get facultyName => object["faculty_name"];

  /// Year of ending.
  int get graduation => object["graduation"];
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
  ProfileObjectCareer? get career {
    final career = object["career"];
    if (career != null) return ProfileObjectCareer(career);
  }

  /// Information about the city indicated on the user page in the section `Contacts`.
  ProfileObjectCity? get city {
    final city = object["city"];
    if (city != null) return ProfileObjectCity(city);
  }

  /// The number of mutual friends with the current user.
  int? get commonCount => object["common_count"];

  /// Returns data about the user's services specified in the profile, such as: `skype`,` facebook`, `twitter`,` livejournal`, `instagram`. For each service, a separate field of type string is returned containing the user's nickname.
  ProfileObjectConnections? get connections {
    final connections = object["connections"];
    if (connections != null) return ProfileObjectConnections(connections);
  }

  /// Information about the user's telephone numbers.
  ProfileObjectContacts? get contacts {
    final contacts = object["contacts"];
    if (contacts != null) return ProfileObjectContacts(contacts);
  }

  /// The number of different objects the user has. The field is returned only in the `users.get` method when requesting information about one user, passing the user's `access_token`.
  ProfileObjectCounters? get counters {
    final counters = object["counters"];
    if (counters != null) return ProfileObjectCounters(counters);
  }

  /// Information about the country specified on the user page in the section `Contacts`.
  ProfileObjectCountry? get country {
    final country = object["country"];
    if (country != null) return ProfileObjectCountry(country);
  }

  /// Returns data about the points at which the profile and thumbnail photos of the user were cut, if any.
  ProfileObjectCropPhoto? get cropPhoto {
    final cropPhoto = object["crop_photo"];
    if (cropPhoto != null) return ProfileObjectCropPhoto(cropPhoto);
  }

  /// Short URL of the page. A string containing the short address of the page is returned (for example, `andrew`). If it is not assigned, `"id"+ user_id` is returned, for example,`id35828305`.
  String? get domain => object["domain"];

  /// Information about the user's higher education institution.
  ProfileObjectEducation? get education {
    final education = object["education"];
    if (education != null) return ProfileObjectEducation(education);
  }

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
