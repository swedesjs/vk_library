part of "../../vk_library_options.dart";

class AdSpecification {
  /// Id of the campaign in which the ad will be created.
  final int campaignId;

  /// The format of the ad.
  // TODO: Implement the enum - https://vk.com/dev/ads.createAds
  final int adFormat;

  /// Automatic price control.
  final bool? autobidding;

  /// The maximum limitation of the automatic bet in rubles with kopecks.
  final int? autobiddingMaxCost;

  /// Payment method.
  // TODO: Implement the enum - https://vk.com/dev/ads.createAds
  final int costType;

  /// Price per transition.
  final num? cpc;

  /// Price per `1000` impressions.
  final num? cpm;

  /// Cost per action for oCPM.
  final num? ocpm;

  /// Target type.
  // TODO: Implement the enum - https://vk.com/dev/ads_goals
  final int? goalType;

  /// Limiting the number of impressions of this ad per user.
  final int? impressionsLimit;

  /// if [costType] is equal to `1` and [impressionsLimit] cannot be set - an indication that the number of ad impressions per user is limited.
  final bool? impressionsLimited;

  /// if [adFormat] = `9` or `11` and [costType] = `1`, the period of limiting the number of impressions per user can be set.
  ///
  /// The value is set in seconds, must be a multiple of days (`86400` seconds), maximum `90` days
  ///
  /// When a new period arrives, the impressions counter is reset.
  final int? impressionsLimitPeriod;

  /// Advertising platforms on which the ad will be displayed.
  // TODO: Implement the enum - https://vk.com/dev/ads.createAds
  final Object? adPlatform;

  /// Only for [adFormat] = `9` or `11.1` - do not display ads on community walls.
  final bool? adPlatformNoWall;

  /// Only for [adFormat] = `9` or `11.1` - do not show the ad in the ad network.
  final bool? adPlatformNoAdNetwork;

  /// On which platforms the ad will be shown.
  // TODO: Implement the enum - https://vk.com/dev/ads.createAds
  final String? publisherPlatforms;

  /// Daily limit in rubles.
  final int? dayLimit;

  /// Total limit in rubles.
  final int? allLimit;

  /// ID of the subject or subsection of the subject of the announcement.
  final int? category1Id;

  /// ID of the subject or subsection of the subject of the announcement.
  final int? category2Id;

  /// Displays the age stamp on the ad.
  // TODO: Implement the enum - https://vk.com/dev/ads.createAds
  final int? ageRestriction;

  /// The status of the ad.
  final bool? status;

  /// The name of the ad (for use in the ad account).
  final String? name;

  /// Headline. Can be set only for some ad formats.
  final String? title;

  /// Description of the ad. Can only be set for some ad formats.
  final String? description;

  /// Link to the advertised object.
  final String? linkUrl;

  /// Domain of the advertised object.
  final String? linkDomain;

  /// The heading next to the `button` / `link`. Can be set only for some ad formats.
  final String? linkTitle;

  /// The ID of the ad button. Can be set only for some ad formats.
  // TODO: Implement the enum - https://vk.com/dev/ads_link_buttons
  final String? linkButton;

  /// Main image. Can only be transferred for some ad formats. The result of the image upload to the server should be passed as a value.
  ///
  /// If ad_format is 4 or 5, then this parameter can be omitted and in this case an image from the community or application will be used.
  final String? photo;

  /// Logo. Can only be transferred for some ad formats. The result of [uploading the image to the server](https://vk.com/dev/upload_photo_ads) must be passed as a value.
  final String? photoIcon;

  /// Main video. Can only be transmitted for adaptive format. The result of [uploading video to the server](https://vk.com/dev/upload_video_ads) should be passed as a value.
  final String? video;

  /// Looping video.
  final bool? repeatVideo;

  /// Displaying a warning:
  ///
  /// `There are contraindications. Consultation of a specialist is required.`
  final bool? disclaimerMedical;

  /// Displaying a warning:
  ///
  /// `Consultation of specialists is required.`
  final bool? disclaimerSpecialist;

  /// Displaying a warning:
  ///
  /// `BAA. It is not a drug. `
  final bool? disclaimerSupplements;

  /// Schedule for displaying ads by the hour. An array of seven lines.
  final List<String>? weeklyScheduleHours;

  /// Whether to use the Sunday holiday schedule.
  final bool? weeklyScheduleUseHolidays;

  /// Pixel of external statistics. Available in selected offices.
  final String? statsUrl;

  /// Additional pixel of external statistics. Available in selected offices.
  final String? statsUrl2;

  /// Gender.
  final Sex? sex;

  /// Lower age limit (`0` - not specified, valid range: `14` to `80`).
  final int? ageFrom;

  /// Upper age limit (`0` - not specified, valid range: `14` to `80`).
  final int? ageTo;

  /// Birthday.
  // TODO: Implement the enum - https://vk.com/dev/ads_targeting
  final int? birthday;

  /// Country identifier (`0` - not specified).
  final int? country;

  /// City and region identifiers. Region identifiers must be indicated with a `minus` sign.
  final String? cities;

  /// IDs of cities and regions that should be excluded from targeting. Region identifiers must be indicated with a `minus` sign.
  final String? citiesNot;

  /// Geo-targeting spots.
  final String? geoNear;

  /// The type of geo-targeting locations.
  // TODO: Implement the enum - https://vk.com/dev/ads_targeting
  final String? geoPointType;

  /// Family status.
  final List<MaritalStatus>? statuses;

  /// Community identifiers.
  final List<int>? groups;

  /// Community IDs to exclude from targeting.
  final List<int>? groupsNot;

  /// Formula consisting of community identifiers, logical connectives `|`, `&`, `!` and parentheses for the priority of operations.
  ///
  /// Cannot be used in conjunction with the [groups] or [groupsNot] parameters.
  final String? groupsFormula;

  /// Community identifiers in which the user was active.
  final List<int>? groupsActive;

  /// Formula consisting of community identifiers, logical connectives `|`, `&`, `!` and parentheses for the priority of operations.
  ///
  /// It is not allowed to use together with the [groupsActive] parameter.
  final String? groupsActiveFormula;

  /// Formula consisting of musician identifiers, logical connectives `|`, `&`, `!` and parentheses for the priority of operations.
  final String? musicArtistsFormula;

  /// Formula consisting of key phrases, logical connectives `|`, `&`, `!` and parentheses for the priority of operations. The words of key phrases can consist of letters of the Russian / English alphabets, numbers and a hyphen; they must be separated by spaces between themselves.
  ///
  /// Example: (cat food | red and white dress) &! (Buy online)
  final String? keyPhrases;

  /// If a formula for key phrases is specified, then you can additionally specify a search period - from `1` to `30` days. If the field is absent, then 7 days will be automatically selected.
  final int? keyPhrasesDays;

  /// Application identifiers.
  final List<int>? apps;

  /// App IDs to exclude from targeting.
  final List<int>? appsNot;

  /// Area identifiers.
  final List<int>? districts;

  /// Subway station identifiers.
  final List<int>? stations;

  /// Street identifiers.
  final List<int>? streets;

  /// Educational institution identifiers.
  final List<int>? schools;

  /// Job IDs.
  final List<int>? positions;

  /// Religious identifiers.
  final List<int>? religions;

  /// Categories of interests.
  final String? interestCategories;

  /// Formula consisting of categories of interests, logical connectives `|`, `&`, `!` and parentheses for the priority of operations.
  ///
  /// Cannot be used in conjunction with the [interestCategories] parameter.
  final String? interestCategoriesFormula;

  /// Interests.
  final String? interests;

  /// Devices.
  final String? userDevices;

  /// OS.
  final String? userOs;

  /// Internet browsers.
  final String? userBrowsers;

  /// Retargeting group IDs.
  final List<int>? retargetingGroups;

  /// Retargeting group IDs to exclude from targeting.
  final List<int>? retargetingGroupsNot;

  /// Only for [adFormat] = `9` and `11`. Description of events collected in retargeting groups. An array of objects, where the key is the retargeting group id and the value is an array of events.
  // TODO: Find examples of using this prick. - https://vk.com/dev/ads_targeting
  final Object? eventsRetargetingGroups;

  /// Payments.
  // TODO: Implement the enum - https://vk.com/dev/ads_targeting
  final int? paying;

  /// Only travelers.
  final bool? travellers;

  /// The lower bound for the year of graduation.
  final int? schoolFrom;

  /// The upper bound for the year of graduation.
  final int? schoolTo;

  /// The lower limit of the year of graduation.
  final int? uniFrom;

  /// The upper limit of the year of graduation.
  final int? uniTo;

  const AdSpecification({
    required this.campaignId,
    required this.adFormat,
    this.autobidding,
    this.autobiddingMaxCost,
    required this.costType,
    this.cpc,
    this.cpm,
    this.ocpm,
    this.goalType,
    this.impressionsLimit,
    this.impressionsLimited,
    this.impressionsLimitPeriod,
    this.adPlatform,
    this.adPlatformNoWall,
    this.adPlatformNoAdNetwork,
    this.publisherPlatforms,
    this.dayLimit,
    this.allLimit,
    this.category1Id,
    this.category2Id,
    this.ageRestriction,
    this.status,
    this.name,
    this.title,
    this.description,
    this.linkUrl,
    this.linkDomain,
    this.linkTitle,
    this.linkButton,
    this.photo,
    this.photoIcon,
    this.video,
    this.repeatVideo,
    this.disclaimerMedical,
    this.disclaimerSpecialist,
    this.disclaimerSupplements,
    this.weeklyScheduleHours,
    this.weeklyScheduleUseHolidays,
    this.statsUrl,
    this.statsUrl2,
    this.sex,
    this.ageFrom,
    this.ageTo,
    this.birthday,
    this.country,
    this.cities,
    this.citiesNot,
    this.geoNear,
    this.geoPointType,
    this.statuses,
    this.groups,
    this.groupsNot,
    this.groupsFormula,
    this.groupsActive,
    this.groupsActiveFormula,
    this.musicArtistsFormula,
    this.keyPhrases,
    this.keyPhrasesDays,
    this.apps,
    this.appsNot,
    this.districts,
    this.stations,
    this.streets,
    this.schools,
    this.positions,
    this.religions,
    this.interestCategories,
    this.interestCategoriesFormula,
    this.interests,
    this.userDevices,
    this.userOs,
    this.userBrowsers,
    this.retargetingGroups,
    this.retargetingGroupsNot,
    this.eventsRetargetingGroups,
    this.paying,
    this.travellers,
    this.schoolFrom,
    this.schoolTo,
    this.uniFrom,
    this.uniTo,
  });

  @override
  String toString() {
    return jsonEncode({
      "campaign_id": campaignId,
      "ad_format": adFormat,
      if (autobidding != null) "autobidding": autobidding,
      if (autobiddingMaxCost != null)
        "autobidding_max_cost": autobiddingMaxCost,
      "cost_type": costType,
      if (cpc != null) "cpc": cpc,
      if (cpm != null) "cpm": cpm,
      if (ocpm != null) "ocpm": ocpm,
      if (goalType != null) "goal_type": goalType,
      if (impressionsLimit != null) "impressions_limit": impressionsLimit,
      if (impressionsLimited != null) "impressions_limited": impressionsLimited,
      if (impressionsLimitPeriod != null)
        "impressions_limit_period": impressionsLimitPeriod,
      if (adPlatform != null) "ad_platform": adPlatform,
      if (adPlatformNoWall != null) "ad_platform_no_wall": adPlatformNoWall,
      if (adPlatformNoAdNetwork != null)
        "ad_platform_no_ad_network": adPlatformNoAdNetwork,
      if (publisherPlatforms != null) "publisher_platforms": publisherPlatforms,
      if (dayLimit != null) "day_limit": dayLimit,
      if (allLimit != null) "all_limit": allLimit,
      if (category1Id != null) "category1_id": category1Id,
      if (category2Id != null) "category2_id": category2Id,
      if (ageRestriction != null) "age_restriction": ageRestriction,
      if (status != null) "status": status,
      if (name != null) "name": name,
      if (title != null) "title": title,
      if (description != null) "description": description,
      if (linkUrl != null) "link_url": linkUrl,
      if (linkDomain != null) "link_domain": linkDomain,
      if (linkTitle != null) "link_title": linkTitle,
      if (linkButton != null) "link_button": linkButton,
      if (photo != null) "photo": photo,
      if (photoIcon != null) "photo_icon": photoIcon,
      if (video != null) "video": video,
      if (repeatVideo != null) "repeat_video": repeatVideo,
      if (disclaimerMedical != null) "disclaimer_medical": disclaimerMedical,
      if (disclaimerSpecialist != null)
        "disclaimer_specialist": disclaimerSpecialist,
      if (disclaimerSupplements != null)
        "disclaimer_supplements": disclaimerSupplements,
      if (weeklyScheduleHours != null)
        "weekly_schedule_hours": weeklyScheduleHours,
      if (weeklyScheduleUseHolidays != null)
        "weekly_schedule_use_holidays": weeklyScheduleUseHolidays,
      if (statsUrl != null) "stats_url": statsUrl,
      if (statsUrl2 != null) "stats_url2": statsUrl2,
      if (sex != null) "sex": sex!.index + 1,
      if (ageFrom != null) "age_from": ageFrom,
      if (ageTo != null) "age_to": ageTo,
      if (birthday != null) "birthday": birthday,
      if (country != null) "country": country,
      if (cities != null) "cities": cities,
      if (citiesNot != null) "cities_not": citiesNot,
      if (geoNear != null) "geo_near": geoNear,
      if (geoPointType != null) "geo_point_type": geoPointType,
      if (statuses != null) "statuses": statuses!.join(","),
      if (groups != null) "groups": groups!.join(","),
      if (groupsNot != null) "groups_not": groupsNot!.join(","),
      if (groupsFormula != null) "groups_formula": groupsFormula,
      if (groupsActive != null) "groups_active": groupsActive!.join(","),
      if (groupsActiveFormula != null)
        "groups_active_formula": groupsActiveFormula,
      if (musicArtistsFormula != null)
        "music_artists_formula": musicArtistsFormula,
      if (keyPhrases != null) "key_phrases": keyPhrases,
      if (keyPhrasesDays != null) "key_phrases_days": keyPhrasesDays,
      if (apps != null) "apps": apps!.join(","),
      if (appsNot != null) "apps_not": appsNot!.join(","),
      if (districts != null) "districts": districts!.join(","),
      if (stations != null) "stations": stations!.join(","),
      if (streets != null) "streets": streets!.join(","),
      if (schools != null) "schools": schools!.join(","),
      if (positions != null) "positions": positions!.join(","),
      if (religions != null) "religions": religions!.join(","),
      if (interestCategories != null) "interest_categories": interestCategories,
      if (interestCategoriesFormula != null)
        "interest_categories_formula": interestCategoriesFormula,
      if (interests != null) "interests": interests,
      if (userDevices != null) "user_devices": userDevices,
      if (userOs != null) "user_os": userOs,
      if (userBrowsers != null) "user_browsers": userBrowsers,
      if (retargetingGroups != null)
        "retargeting_groups": retargetingGroups!.join(","),
      if (retargetingGroupsNot != null)
        "retargeting_groups_not": retargetingGroupsNot!.join(","),
      if (eventsRetargetingGroups != null)
        "events_retargeting_groups": eventsRetargetingGroups,
      if (paying != null) "paying": paying,
      if (travellers != null) "travellers": travellers,
      if (schoolFrom != null) "school_from": schoolFrom,
      if (schoolTo != null) "school_to": schoolTo,
      if (uniFrom != null) "uni_from": uniFrom,
      if (uniTo != null) "uni_to": uniTo,
    });
  }
}
