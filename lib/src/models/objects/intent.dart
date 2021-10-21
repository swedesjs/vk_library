part of vk_library;

class Intent {
  static const PROMO_NEWLETTER = Intent("promo_newsletter");
  static const NON_PROMO_NEWLETTER = Intent("non_promo_newsletter");
  static const CONFIRMED_NOTIFICATION = Intent("confirmed_notification");

  final String intent;
  const Intent(this.intent);

  @override
  String toString() => intent;
}
