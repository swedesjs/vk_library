part of vk_library_enums;

/// The ad format for the [Ads.getUploadURL] method.
enum AdFormatAdsGetUploadURL {
  /// Image and text.
  IMAGE_AND_TEXT,

  /// Large image.
  LARGE_IMAGE,

  /// Exclusive format.
  EXCLUSIVE_FORMAT,

  /// Community or app promotion, square image.
  SQUARE_IMAGE,

  /// Application in the news feed.
  @deprecated
  APPLICATION_IN_THE_NEWS_FEED,

  /// Mobile app.
  MOBILE_APP,

  /// Responsive format.
  ADAPTIVE_FORMAT
}

const adFormatAdsGetUploadURLMap = <AdFormatAdsGetUploadURL, int>{
  AdFormatAdsGetUploadURL.IMAGE_AND_TEXT: 1,
  AdFormatAdsGetUploadURL.LARGE_IMAGE: 2,
  AdFormatAdsGetUploadURL.EXCLUSIVE_FORMAT: 3,
  AdFormatAdsGetUploadURL.SQUARE_IMAGE: 4,
  // ignore: deprecated_member_use_from_same_package
  AdFormatAdsGetUploadURL.APPLICATION_IN_THE_NEWS_FEED: 5,
  AdFormatAdsGetUploadURL.MOBILE_APP: 6,
  AdFormatAdsGetUploadURL.ADAPTIVE_FORMAT: 11
};
