part of vk_library;

/// Class with enumerations for the intent parameter in the `messages.getIntentUsers` method
///
/// *Example*:
/// ```dart
/// await vk.api.messages.getIntentUsers(intent: Intent.PROMO_NEWLETTER);
/// ```
class Intent {
  /// Newsletter
  static const PROMO_NEWLETTER = Intent("promo_newsletter");

  /// Nepromo-bulletin
  static const NON_PROMO_NEWLETTER = Intent("non_promo_newsletter");

  /// Confirmed notice
  static const CONFIRMED_NOTIFICATION = Intent("confirmed_notification");

  /// Intent
  final String intent;

  /// It is not advisable to create an instance
  const Intent(this.intent);

  @override
  String toString() => intent;
}
