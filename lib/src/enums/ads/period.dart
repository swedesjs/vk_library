part of vk_library;

/// A way to group data by date. Applied in the [Ads.getDemographics] method.
enum PeriodAds {
  /// Daily statistics.
  DAY,

  /// Statistics by months.
  MONTH,

  /// All-time statistics.
  OVERALL
}
