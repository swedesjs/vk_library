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

extension _Intent on Intent {
  String stringValue() => _stringValue(this);
}
