part of vk_library;

/// The class describes the `fields` parameter in the [Messages.getChat] method
/// 
/// It also takes some fields from [UserObjectFields]
class MessagesGetChatFields extends Fields {
  /// Nickname (patronymic) of the user.
  static const NICKNAME = MessagesGetChatFields._("nickname");

  /// Short address.
  static const SCREEN_NAME = MessagesGetChatFields._("screen_name");

  /// User gender.
  static const SEX = MessagesGetChatFields._("sex");

  /// Date of Birth.
  static const BDATE = MessagesGetChatFields._("bdate");

  /// Information about the city indicated on the user page in the section `Contacts`.
  static const CITY = MessagesGetChatFields._("city");

  /// Information about the country specified on the user page in the section `Contacts`
  static const COUNTRY = MessagesGetChatFields._("country");

  /// Time zone.
  static const TIMEZONE = MessagesGetChatFields._("timezone");

  /// The URL of a `square` user photo, 50 pixels wide.
  static const PHOTO_50 = MessagesGetChatFields._("photo_50");

  /// The URL for a `square` user photo, 100 pixels wide.
  static const PHOTO_100 = MessagesGetChatFields._("photo_100");

  /// The URL of the user's photo, which is 200 pixels wide.
  static const PHOTO_200_ORIG = MessagesGetChatFields._("photo_200_orig");

  /// Information about whether the user has set a profile photo.
  static const HAS_MOBILE = MessagesGetChatFields._("has_mobile");

  /// Information about the user's telephone numbers.
  static const CONTACTS = MessagesGetChatFields._("contacts");

  /// Information about the user's higher education institution.
  static const EDUCATION = MessagesGetChatFields._("education");

  /// Information about whether the user is currently on the site.
  static const ONLINE = MessagesGetChatFields._("online");

  /// The number of different objects the user has.
  static const COUNTERS = MessagesGetChatFields._("counters");

  /// List of relatives.
  static const RELATION = MessagesGetChatFields._("relation");

  /// Last visit time.
  static const LAST_SEEN = MessagesGetChatFields._("last_seen");

  /// User status.
  static const STATUS = MessagesGetChatFields._("status");

  /// Information about whether the current user can send a private message.
  static const CAN_WRITE_PRIVATE_MESSAGE = MessagesGetChatFields._(
    "can_write_private_message",
  );

  /// Information about whether the current user can see other people's posts on the wall.
  static const CAN_SEE_ALL_POSTS = MessagesGetChatFields._("can_see_all_posts");

  /// Information about whether the current user can post on the wall.
  static const CAN_POST = MessagesGetChatFields._("can_post");

  /// List of universities where the user studied. An array of objects describing universities.
  static const UNIVERSITIES = MessagesGetChatFields._("universities");

  const MessagesGetChatFields._(String fields) : super._(fields);
}
