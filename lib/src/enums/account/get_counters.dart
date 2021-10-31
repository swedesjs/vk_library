part of vk_library;
/// Enum for the `filter' parameter in the [Account.getCounters] method.
enum AccountGetCountersFilter {
  /// New friend requests.
  FRIENDS,

  /// Offered friends.
  FRIENDS_SUGGESTIONS,

  /// New messages.
  MESSAGES,

  /// New marks in photos.
  PHOTOS,

  /// New marks on video recordings.
  VIDEOS,

  /// Present.
  GIFTS,

  /// Developments.
  EVENTS,

  /// Community.
  GROUPS,

  /// Answers.
  NOTIFICATIONS,

  /// Inquiries in mobile games.
  SDK,

  /// Notifications from applications.
  APP_REQUESTS,

  /// Recommendations of friends.
  FRIENDS_RECOMMENDATIONS,
}

extension _AccountGetCountersFilter on AccountGetCountersFilter {
  String stringValue() => _stringValue(this);
}
