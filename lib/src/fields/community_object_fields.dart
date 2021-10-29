part of vk_library;

/// A class that enumerates the fields of a community object.
class CommunityObjectFields extends Fields
    implements UserOrCommunityObjectFields {
  /// Public subject line.
  static const ACTIVITY = CommunityObjectFields._("activity");

  /// Information about community addresses.
  static const ADDRESSES = CommunityObjectFields._("addresses");

  /// Age limit.
  static const AGE_LIMITS = CommunityObjectFields._("age_limits");

  /// Community blacklisting information.
  static const BAN_INFO = CommunityObjectFields._("ban_info");

  /// Information about whether the current user can create a new discussion in the group.
  static const CAN_CREATE_TOPIC = CommunityObjectFields._("can_create_topic");

  /// Information about whether the current user can write a message to the community.
  static const CAN_MESSAGE = CommunityObjectFields._("can_message");

  /// Information about whether the current user can post on the community wall.
  static const CAN_POST = CommunityObjectFields._("can_post");

  /// Information about whether it is allowed to see other people's posts on the group wall.
  static const CAN_SEE_ALL_POSTS = CommunityObjectFields._("can_see_all_posts");

  /// Information about whether the current user can upload documents to the group.
  static const CAN_UPLOAD_DOC = CommunityObjectFields._("can_upload_doc");

  /// Information about whether the current user can upload videos to the group.
  static const CAN_UPLOAD_VIDEO = CommunityObjectFields._("can_upload_video");

  /// The city listed in the community info.
  static const CITY = CommunityObjectFields._("city");

  /// Information from the block of contacts of the public page.
  static const CONTACTS = CommunityObjectFields._("contacts");

  /// An object containing the community counters.
  static const COUNTERS = CommunityObjectFields._("counters");

  /// The country listed in the community info.
  static const COUNTRY = CommunityObjectFields._("country");

  /// Community cover.
  static const COVER = CommunityObjectFields._("cover");

  /// Returns data about the points at which the profile and thumbnail photos of the community were cropped.
  static const CROP_PHOTO = CommunityObjectFields._("crop_photo");

  /// Community description text.
  static const DESCRIPTION = CommunityObjectFields._("description");

  /// The ID of the pinned entry.
  static const FIXED_POST = CommunityObjectFields._("fixed_post");

  /// Information about whether the community has a master photo.
  static const HAS_PHOTO = CommunityObjectFields._("has_photo");

  /// Information about whether the community is bookmarked by the current user.
  static const IS_FAVORITE = CommunityObjectFields._("is_favorite");

  /// Information about whether the community is hidden from the current user's news feed.
  static const IS_HIDDEN_FROM_FEED = CommunityObjectFields._(
    "is_hidden_from_feed",
  );

  /// Information about whether posts from this community are blocked (for the current user).
  static const IS_MESSAGES_BLOCKED = CommunityObjectFields._(
    "is_messages_blocked",
  );

  /// Information from the community links block.
  static const LINKS = CommunityObjectFields._("links");

  /// ID of the main photo album.
  static const MAIN_ALBUM_ID = CommunityObjectFields._("main_album_id");

  /// Main section information
  static const MAIN_SECTION = CommunityObjectFields._("main_section");

  /// Store information.
  static const MARKET = CommunityObjectFields._("market");

  /// The member status of the current user.
  static const MEMBER_STATUS = CommunityObjectFields._("member_status");

  /// Number of members in the community
  static const MEMBERS_COUNT = CommunityObjectFields._("members_count");

  /// The location listed in the community info.
  static const PLACE = CommunityObjectFields._("place");

  /// Returned for public pages.
  static const PUBLIC_DATE_LABEL = CommunityObjectFields._("public_date_label");

  /// Site address from the `website` field in the community description.
  static const SITE = CommunityObjectFields._("site");

  /// For meetings, contains the start time of the meeting in `unixtime` format.
  static const START_DATE = CommunityObjectFields._("start_date");

  /// For meetings, contains the end time of the meeting in `unixtime` format.
  static const FINISH_DATE = CommunityObjectFields._("finish_date");

  /// Community status.
  static const STATUS = CommunityObjectFields._("status");

  /// Information about whether the community has a `light`.
  static const TRENDING = CommunityObjectFields._("trending");

  /// Information about whether the community is verified.
  static const VERIFIED = CommunityObjectFields._("verified");

  /// Wall.
  static const WALL = CommunityObjectFields._("wall");

  /// The name of the main wiki page.
  static const WIKI_PAGE = CommunityObjectFields._("wiki_page");

  const CommunityObjectFields._(String fields) : super._(fields);
}
