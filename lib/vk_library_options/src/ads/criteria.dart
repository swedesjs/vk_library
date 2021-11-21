part of vk_library_options;

class CriteriaAdsGetTargetingStats {
  /// Gender.
  final Sex? sex;

  /// Lower age limit.
  final int? ageFrom;

  /// Upper age limit.
  final int? ageTo;

  /// Birthday.
  // TODO: Implement the enum - https://vk.com/dev/ads.getTargetingStats
  final int? birthday;

  /// Country identifier.
  final int? country;

  /// City and region identifiers. Region identifiers must be specified with a `minus` sign.
  final List<int>? cities;

  /// IDs of cities and regions that should be excluded from targeting. Region identifiers must be indicated with a `minus` sign.
  final List<int>? citiesNot;

  /// Geo-targeting locations.
  final String? geoNear;

  /// The type of geo-targeting locations.
  // TODO: Implement the enum - https://vk.com/dev/ads.getTargetingStats
  final String? geoPointType;

  /// Family status.
  final List<MaritalStatus>? statuses;

  /// Community identifiers.
  final List<int>? groups;

  /// Community IDs to exclude from targeting.
  final List<int>? groupsNot;

  /// Application identifiers.
  final List<int>? apps;

  /// App IDs to exclude from targeting.
  final List<int>? appsNot;

  /// Area identifiers.
  final List<int>? districts;

  /// Metro station identifiers.
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

  /// Payments.
  final int? paying;

  /// Travelers only.
  final int? travellers;

  /// The lower bound for the year of graduation.
  final int? schoolFrom;

  /// The upper bound for the year of graduation.
  final int? schoolTo;

  /// The lower limit of the year of graduation.
  final int? uniFrom;

  /// The upper limit of the year of graduation.
  final int? uniTo;

  const CriteriaAdsGetTargetingStats({
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
    this.apps,
    this.appsNot,
    this.districts,
    this.stations,
    this.streets,
    this.schools,
    this.positions,
    this.religions,
    this.interestCategories,
    this.interests,
    this.userDevices,
    this.userOs,
    this.userBrowsers,
    this.retargetingGroups,
    this.retargetingGroupsNot,
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
      if (sex != null) "sex": sex!.index + 1,
      if (ageFrom != null) "age_from": ageFrom,
      if (ageTo != null) "age_to": ageTo,
      if (birthday != null) "birthday": birthday,
      if (country != null) "country": country,
      if (cities != null) "cities": cities!.join(","),
      if (citiesNot != null) "cities_not": citiesNot!.join(","),
      if (geoNear != null) "geo_near": geoNear,
      if (geoPointType != null) "geo_point_type": geoPointType,
      if (statuses != null) "statuses": statuses!.map((e) => e.index).join(","),
      if (groups != null) "groups": groups!.join(","),
      if (groupsNot != null) "groups_not": groupsNot!.join(","),
      if (apps != null) "apps": apps!.join(","),
      if (appsNot != null) "apps_not": appsNot!.join(","),
      if (districts != null) "districts": districts!.join(","),
      if (stations != null) "stations": stations!.join(","),
      if (streets != null) "streets": streets!.join(","),
      if (schools != null) "schools": schools!.join(","),
      if (positions != null) "positions": positions!.join(","),
      if (religions != null) "religions": religions!.join(","),
      if (interestCategories != null) "interest_categories": interestCategories,
      if (interests != null) "interests": interests,
      if (userDevices != null) "user_devices": userDevices,
      if (userOs != null) "user_os": userOs,
      if (userBrowsers != null) "user_browsers": userBrowsers,
      if (retargetingGroups != null)
        "retargeting_groups": retargetingGroups!.join(","),
      if (retargetingGroupsNot != null)
        "retargeting_groups_not": retargetingGroupsNot!.join(","),
      if (paying != null) "paying": paying,
      if (travellers != null) "travellers": travellers,
      if (schoolFrom != null) "school_from": schoolFrom,
      if (schoolTo != null) "school_to": schoolTo,
      if (uniFrom != null) "uni_from": uniFrom,
      if (uniTo != null) "uni_to": uniTo,
    });
  }
}
