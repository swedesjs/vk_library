part of vk_library;

/// The class describes the `fields` parameter in the [Account.getInfo] method
class AccountGetInfoFields extends Fields {
  /// String country code.
  static const COUNTRY = AccountGetInfoFields._("country");

  /// Information about whether a secure account connection is enabled.
  static const HTTPS_REQUIRED = AccountGetInfoFields._("https_required");

  /// Information about whether only the user's entry is displayed on the wall.
  static const OWN_POSTS_DEFAULT = AccountGetInfoFields._("own_posts_default");

  /// Information about whether the comment on the wall entries is disabled.
  static const NO_WALL_REPLIES = AccountGetInfoFields._("no_wall_replies");

  /// Information about whether a user has passed training on the use of the application.
  static const INTRO = AccountGetInfoFields._("intro");

  /// The identifier of the current user language.
  static const LANG = AccountGetInfoFields._("lang");

  const AccountGetInfoFields._(String fields) : super._(fields);
}
