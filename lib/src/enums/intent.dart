part of vk_library;

/// Enum is for the `intent` parameter in the [Messages.getIntentUsers] method
enum Intent {
  /// Promotional newsletter.
  PROMO_NEWSLETTER,

  /// Not a promotional newsletter.
  NON_PROMO_NEWSLETTER,

  /// Confirmed notification.
  CONFIRMED_NOTIFICATION,
}

const _intentString = <Intent, String>{
  Intent.PROMO_NEWSLETTER: "promo_newsletter",
  Intent.NON_PROMO_NEWSLETTER: "non_promo_newsletter",
  Intent.CONFIRMED_NOTIFICATION: "confirmed_notification"
};
