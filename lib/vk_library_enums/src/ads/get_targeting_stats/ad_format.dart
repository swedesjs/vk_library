part of vk_library_enums;

/// The ad format for the [Ads.getTargetingStats] method.
enum AdFormatGetTargetingStats {
  /// Image and text.
  IMAGE_AND_TEXT,

  /// Large image.
  LARGE_IMAGE,

  /// Exclusive format.
  EXCLUSIVE_FORMAT,

  /// Community or app promotion, square image.
  SQUARE_IMAGE,

  /// Special format for applications.
  APPLICATION_FORMAT,

  /// Special format of communities.
  COMMUNITY_FORMAT,

  /// Community entry.
  COMMUNITY_ENTRY,

  /// Application showcase.
  APPLICATION_SHOWCASE,

  /// Responsive format.
  ADAPTIVE_FORMAT
}

const adFormatGetTargetingStatsMap = <AdFormatGetTargetingStats, int>{
  AdFormatGetTargetingStats.IMAGE_AND_TEXT: 1,
  AdFormatGetTargetingStats.LARGE_IMAGE: 2,
  AdFormatGetTargetingStats.EXCLUSIVE_FORMAT: 3,
  AdFormatGetTargetingStats.SQUARE_IMAGE: 4,
  AdFormatGetTargetingStats.APPLICATION_FORMAT: 7,
  AdFormatGetTargetingStats.COMMUNITY_FORMAT: 8,
  AdFormatGetTargetingStats.COMMUNITY_ENTRY: 9,
  AdFormatGetTargetingStats.APPLICATION_SHOWCASE: 10,
  AdFormatGetTargetingStats.ADAPTIVE_FORMAT: 11,
};
