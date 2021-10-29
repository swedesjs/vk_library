part of vk_library;

/// The class is an enumeration of optional fields from the [user](https://vk.com/dev/objects/user) object.
class UserObjectFields extends Fields {
  /// Content of the field `About me` from the profile.
  static const ABOUT = UserObjectFields._("about");

  /// Field content `Activity` from profile.
  static const ACTIVITIES = UserObjectFields._("activities");

  /// Date of Birth.
  static const BDATE = UserObjectFields._("bdate");

  /// Information about whether the current user is blacklisted.
  static const BLACKLISTED = UserObjectFields._("blacklisted");

  /// Information about whether the user is blacklisted by the current user.
  static const BLACKLISTED_BY_ME = UserObjectFields._("blacklisted_by_me");

  /// Content of the field `Favorite books` from the user profile.
  static const BOOKS = UserObjectFields._("books");

  /// Information about whether the current user can post on the wall.
  static const CAN_POST = UserObjectFields._("can_post");

  /// Information about whether the current user can see other people's posts on the wall.
  static const CAN_SEE_ALL_POSTS = UserObjectFields._("can_see_all_posts");

  /// Information about whether the current user can see audio recordings.
  static const CAN_SEE_AUDIO = UserObjectFields._("can_see_audio");

  /// Information about whether a notification will be sent to the user about a friend request from the current user.
  static const CAN_SEND_FRIEND_REQUEST = UserObjectFields._(
    "can_send_friend_request",
  );

  /// Information about whether the current user can send a private message.
  static const CAN_WRITE_PRIVATE_MESSAGE = UserObjectFields._(
    "can_write_private_message",
  );

  /// Information about the user's career.
  static const CAREER = UserObjectFields._("carrer");

  /// Information about the city indicated on the user page in the section `Contacts`.
  static const CITY = UserObjectFields._("city");

  /// The number of mutual friends with the current user.
  static const COMMON_COUNT = UserObjectFields._("common_count");

  /// Returns data about the user's services specified in the profile, such as: `skype`, `facebook`, `twitter`, `livejournal`, `instagram`.
  static const CONNECTIONS = UserObjectFields._("connections");

  /// Information about the user's telephone numbers.
  static const CONTACTS = UserObjectFields._("contacts");

  /// The number of different objects the user has.
  static const COUNTERS = UserObjectFields._("counters");

  /// Information about the country specified on the user page in the section `Contacts`.
  static const COUNTRY = UserObjectFields._("country");

  /// Returns data about the points at which the profile and thumbnail photos of the user were cut, if any.
  static const CROP_PHOTO = UserObjectFields._("crop_photo");

  /// The short address of the page.
  static const DOMAIN = UserObjectFields._("domain");

  /// Information about the user's higher education institution.
  static const EDUCATION = UserObjectFields._("education");

  /// External services to which export from VK is configured (`twitter`,`facebook`, `livejournal`,`instagram`).
  static const EXPORTS = UserObjectFields._("exports");

  /// Name in the `nominative` case.
  static const FIRST_NAME_NOM = UserObjectFields._("first_name_nom");

  /// `Genitive` name.
  static const FIRST_NAME_GEN = UserObjectFields._("first_name_gen");

  /// `Dative` name.
  static const FIRST_NAME_DAT = UserObjectFields._("first_name_dat");

  /// `Accusative` name.
  static const FIRST_NAME_ACC = UserObjectFields._("first_name_acc");

  /// Name in `instrumental` case.
  static const FIRST_NAME_INS = UserObjectFields._("first_name_ins");

  /// Name in `prepositional` case.
  static const FIRST_NAME_ABL = UserObjectFields._("first_name_abl");

  /// The number of user subscribers.
  static const FOLLOWERS_COUNT = UserObjectFields._("followers_count");

  /// Friendship status with the user.
  static const FRIEND_STATUS = UserObjectFields._("friend_status");

  /// Content of the `Favorite games` field from the profile.
  static const GAMES = UserObjectFields._("games");

  /// Information about whether the user's mobile phone number is known.
  static const HAS_MOBILE = UserObjectFields._("has_mobile");

  /// Information about whether the user has set a profile photo.
  static const HAS_PHOTO = UserObjectFields._("has_photo");

  /// Hometown name.
  static const HOME_TOWN = UserObjectFields._("home_town");

  /// Content of the field `Interests` from the profile.
  static const INTERESTS = UserObjectFields._("interests");

  /// Information about whether the user is bookmarked by the current user.
  static const IS_FAVORITE = UserObjectFields._("is_favorite");

  /// Information about whether the user is a friend of the current user.
  static const IS_FRIEND = UserObjectFields._("is_friend");

  /// Information about whether the user is hidden from the current user's news feed.
  static const IS_HIDDEN_FROM_FEED = UserObjectFields._("is_hidden_from_feed");

  /// Whether the profile is indexed by search sites.
  static const IS_NO_INDEX = UserObjectFields._("is_no_index");

  /// Surname in the `nominative` case.
  static const LAST_NAME_NOM = UserObjectFields._("last_name_nom");

  /// Surname in `genitive`.
  static const LAST_NAME_GEN = UserObjectFields._("last_name_gen");

  /// Surname in the `dative` case.
  static const LAST_NAME_DAT = UserObjectFields._("last_name_dat");

  /// Surname in `accusative` case.
  static const LAST_NAME_ACC = UserObjectFields._("last_name_acc");

  /// Surname in the `instrumental` case.
  static const LAST_NAME_INS = UserObjectFields._("last_name_ins");

  /// Surname in the `prepositional` case.
  static const LAST_NAME_ABL = UserObjectFields._("last_name_abl");

  /// Last visit time.
  static const LAST_SEEN = UserObjectFields._("last_seen");

  /// Comma-separated IDs of the user's friends lists.
  static const LISTS = UserObjectFields._("lists");

  /// Maiden name.
  static const MAIDEN_NAME = UserObjectFields._("maiden_name");

  /// Information about the user's military service.
  static const MILITARY = UserObjectFields._("military");

  /// Content of the field `Favorite movies` from the user profile.
  static const MOVIES = UserObjectFields._("movies");

  /// Content of the field `Favorite music` from the user profile.
  static const MUSIC = UserObjectFields._("music");

  /// Nickname (patronymic) of the user.
  static const NICKNAME = UserObjectFields._("nickname");

  /// Information about the current occupation of the user.
  static const OCCUPATION = UserObjectFields._("occupation");

  /// Information about whether the user is currently on the site.
  static const ONLINE = UserObjectFields._("online");

  /// Information about the fields from the section `Life position`.
  static const PERSONAL = UserObjectFields._("personal");

  /// The URL of a `square` user photo, 50 pixels wide.
  static const PHOTO_50 = UserObjectFields._("photo_50");

  /// The URL for a `square` user photo, 100 pixels wide.
  static const PHOTO_100 = UserObjectFields._("photo_100");

  /// The URL of the user's photo, which is 200 pixels wide.
  static const PHOTO_200_ORIG = UserObjectFields._("photo_200_orig");

  /// The URL of a `square` photo, 200 pixels wide.
  static const PHOTO_200 = UserObjectFields._("photo_200");

  /// The URL of a photo that is 400 pixels wide.
  static const PHOTO_400_ORIG = UserObjectFields._("photo_400_orig");

  /// The [String] identifier for the user's main profile photo.
  static const PHOTO_ID = UserObjectFields._("photo_id");

  /// URL of `square` photo with maximum width.
  static const PHOTO_MAX = UserObjectFields._("photo_max");

  /// Maximum size photo URL.
  static const PHOTO_MAX_ORIG = UserObjectFields._("photo_max_orig");

  /// Favorite quotes.
  static const QUOTES = UserObjectFields._("quotes");

  /// List of relatives.
  static const RELATIVES = UserObjectFields._("relatives");

  /// Family status.
  static const RELATIO = UserObjectFields._("relatio");

  const UserObjectFields._(String fields) : super._(fields);
}
