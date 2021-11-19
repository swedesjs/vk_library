part of vk_library;

/// A class for using the [`ads`](https://vk.com/dev/ads) methods.
class Ads {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Ads(this._api);

  /// Adds administrators and / or observers to the ad account.
  Future<List<Json>> addOfficeUsers({
    required int accountId,
    required List<UserSpecification> data,
  }) async {
    final data_r = await _api.call("ads.addOfficeUsers", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Checks the link to the advertised object.
  Future<Json> checkLink({
    required int accountId,
    required LinkTypeAds linkType,
    required String linkUrl,
    int? campaignId,
  }) async {
    final data = await _api.call("ads.checkLink", {
      "account_id": accountId,
      "link_type": linkType.value,
      "link_url": linkUrl,
      if (campaignId != null) "campaign_id": campaignId,
    });

    return data.response;
  }

  /// Creates advertisements.
  Future<List<Json>> createAds({
    required int accountId,
    required List<AdSpecification> data,
  }) async {
    final data_r = await _api.call("ads.createAds", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Creates advertising campaigns.
  Future<List<Json>> createCampaigns({
    required int accountId,
    required List<CampaignSpecification> data,
  }) async {
    final data_r = await _api.call("ads.createCampaigns", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Creates advertising campaigns.
  Future<List<Json>> createClients({
    required int accountId,
    required List<ClientSpecification> data,
  }) async {
    final data_r = await _api.call("ads.createClients", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Creates a request to find a similar audience.
  Future<Json> createLookalikeRequest({
    required int accountId,
    int? clientId,
    SourceTypeAds? sourceType,
    int? retargetingGroupId,
  }) async {
    final data = await _api.call("ads.createLookalikeRequest", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (sourceType != null) "source_type": sourceType,
      if (retargetingGroupId != null) "retargeting_group_id": retargetingGroupId
    });

    return data.response;
  }

  /// Creates an audience for retargeting advertisements to users who have visited the advertiser's site (viewed product information, registered, etc.).
  Future<Json> createTargetGroup({
    required int accountId,
    int? clientId,
    required String name,
    required int lifetime,
    int? targetPixelId,
    List<TargetPixelRulesAds>? targetPixelRules,
  }) async {
    final data = await _api.call("ads.createTargetGroup", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "name": name,
      "lifetime": lifetime,
      if (targetPixelId != null) "target_pixel_id": targetPixelId,
      if (targetPixelRules != null) "target_pixel_rules": targetPixelRules,
    });

    return data.response;
  }

  /// Creates a retargeting pixel.
  Future<Json> createTargetPixel({
    required int accountId,
    int? clientId,
    required String name,
    String? domain,
    int? categoryId,
  }) async {
    final data = await _api.call("ads.createTargetPixel", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "name": name,
      if (domain != null) "domain": domain,
      if (categoryId != null) "category_id": categoryId,
    });

    return data.response;
  }

  /// Archives advertisements.
  Future<List<int>> deleteAds({
    required int accountId,
    required List<int> ids,
  }) async {
    final data = await _api.call("ads.deleteAds", {
      "account_id": accountId,
      "ids": ids,
    });

    return data.response;
  }

  /// Archives ad campaigns.
  Future<List<int>> deleteCampaigns({
    required int accountId,
    required List<int> ids,
  }) async {
    final data = await _api.call("ads.deleteCampaigns", {
      "account_id": accountId,
      "ids": ids,
    });

    return data.response;
  }

  /// Archives advertising agency clients.
  Future<List<int>> deleteClients({
    required int accountId,
    required List<int> ids,
  }) async {
    final data = await _api.call("ads.deleteClients", {
      "account_id": accountId,
      "ids": ids,
    });

    return data.response;
  }

  /// Removes retargeting audience.
  Future<bool> deleteTargetGroup({
    required int accountId,
    int? clientId,
    required int targetGroupId,
  }) async {
    final data = await _api.call("ads.deleteTargetGroup", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "target_group_id": targetGroupId,
    });

    return data.response == 1;
  }

  /// Removes the retargeting pixel.
  Future<bool> deleteTargetPixel({
    required int accountId,
    int? clientId,
    required int targetGroupId,
  }) async {
    final data = await _api.call("ads.deleteTargetPixel", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "target_group_id": targetGroupId,
    });

    return data.response == 1;
  }

  /// Returns a list of ad cabinets.
  Future<List<Json>> getAccounts() async {
    final data = await _api.call("ads.getAccounts", const {});

    return data.response;
  }

  /// Returns a list of advertisements.
  Future<List<Json>> getAds({
    required int accountId,
    int? clientId,
    bool? includeDeleted,
    bool? onlyDeleted,
    List<int>? campaignIds,
    List<int>? adIds,
    int? limit,
    int? offset,
  }) async {
    final data = await _api.call("ads.getAds", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (onlyDeleted != null) "only_deleted": onlyDeleted,
      if (campaignIds != null) "campaign_ids": campaignIds,
      if (adIds != null) "ad_ids": adIds,
      if (limit != null) "limit": limit,
      if (offset != null) "offset": offset,
    });

    return data.response;
  }

  /// Returns descriptions of the appearance of advertisements.
  Future<List<Json>> getAdsLayout({
    required int accountId,
    int? clientId,
    bool? includeDeleted,
    bool? onlyDeleted,
    List<int>? campaignIds,
    List<int>? adIds,
    int? limit,
    int? offset,
  }) async {
    final data = await _api.call("ads.getAdsLayout", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (onlyDeleted != null) "only_deleted": onlyDeleted,
      if (campaignIds != null) "campaign_ids": campaignIds,
      if (adIds != null) "ad_ids": adIds,
      if (limit != null) "limit": limit,
      if (offset != null) "offset": offset,
    });

    return data.response;
  }

  /// Returns the ad targeting parameters.
  Future<List<Json>> getAdsTargeting({
    required int accountId,
    int? clientId,
    bool? includeDeleted,
    bool? onlyDeleted,
    List<int>? campaignIds,
    List<int>? adIds,
    int? limit,
    int? offset,
  }) async {
    final data = await _api.call("ads.getAdsTargeting", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (onlyDeleted != null) "only_deleted": onlyDeleted,
      if (campaignIds != null) "campaign_ids": campaignIds,
      if (adIds != null) "ad_ids": adIds,
      if (limit != null) "limit": limit,
      if (offset != null) "offset": offset,
    });

    return data.response;
  }

  /// Returns the current ad cabinet budget.
  Future<int> getBudget({required int accountId}) async {
    final data = await _api.call("ads.getBudget", {"account_id": accountId});

    return data.response;
  }

  /// Returns the current ad cabinet budget.
  Future<List<Json>> getCampaigns({
    required int accountId,
    int? clientId,
    bool? includeDeleted,
    List<int>? campaignIds,
    Set<String>? fields,
  }) async {
    final data = await _api.call("ads.getCampaigns", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (includeDeleted != null) "include_deleted": includeDeleted,
      if (campaignIds != null) "campaign_ids": campaignIds,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Allows you to get the possible subject of advertisements.
  Future<Json> getCategories() async {
    final data = await _api.call("ads.getCategories", const {});
    return data.response;
  }

  /// Returns a list of clients for an advertising agency.
  Future<List<Json>> getClients({required int accountId}) async {
    final data = await _api.call("ads.getClients", {"account_id": accountId});

    return data.response;
  }

  /// Returns demographic statistics for advertisements or campaigns.
  Future<Json> getDemographics({
    required int accountId,
    required IdsTypeAds idsType,
    required List<int> ids,
    required PeriodAds period,
    required String dateFrom,
    required String dateTo,
  }) async {
    final data = await _api.call("ads.getDemographics", {
      "account_id": accountId,
      "ids": idsType.value,
      "period": period.value,
      "date_from": dateFrom,
      "date_to": dateTo,
    });

    return data.response;
  }

  /// Returns information about the current state of the counter - the number of method launches remaining and the time until the next counter reset in seconds.
  Future<Json> getFloodStats({required int accountId}) async {
    final data =
        await _api.call("ads.getFloodStats", {"account_id": accountId});

    return data.response;
  }

  /// Returns a list of queries to find similar audiences.
  Future<Json> getLookalikeRequests({
    required int accountId,
    int? clientId,
    List<int>? requestsIds,
    int? offset,
    int? limit,
    // TODO: Implement the enum. - https://vk.com/dev/ads.getLookalikeRequests
    String? sortBy,
  }) async {
    final data = await _api.call("ads.getLookalikeRequests", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (requestsIds != null) "requests_ids": requestsIds.join(","),
      if (offset != null) "offset": offset,
      if (limit != null) "limit": limit,
      if (sortBy != null) "sort_by": sortBy,
    });

    return data.response;
  }

  /// Returns information about musicians whose listeners can be targeted.
  Future<List<Json>> getMusicians({required String artistName}) async {
    final data = await _api.call("ads.getMusicians", {
      "artist_name": artistName,
    });

    return data.response;
  }

  /// Returns information about musicians to listeners for whom targeting is available.
  Future<List<Json>> getMusiciansByIds({required List<int> ids}) async {
    final data = await _api.call("ads.getMusiciansByIds", {"ids": ids});

    return data.response;
  }

  /// Returns a list of ad cabinet administrators and observers.
  Future<List<Json>> getOfficeUsers({required int accountId}) async {
    final data = await _api.call("ads.getOfficeUsers", {
      "account_id": accountId,
    });

    return data.response;
  }

  /// Returns detailed statistics for the reach of ad posts from ads and campaigns to promote community posts.
  Future<List<Json>> getPostsReach({
    required int accountId,
    // TODO: Implement the enum. - https://vk.com/dev/ads.getPostsReach
    required String idsType,
    required List<int> ids,
  }) async {
    final data = await _api.call("ads.getPostsReach", {
      "account_id": accountId,
      "ids_type": idsType,
      "ids": ids.join(","),
    });

    return data.response;
  }

  /// Returns the reason why the specified ad was denied pre-moderation.
  Future<Json> getRejectionReason({
    required int accountId,
    required int adId,
  }) async {
    final data = await _api.call("ads.getRejectionReason", {
      "account_id": accountId,
      "ad_id": adId,
    });

    return data.response;
  }

  /// Returns statistics on performance indicators for advertisements, campaigns, clients, or the entire cabinet.
  Future<Json> getStatistics({
    required int accountId,
    // TODO: Implement the enum. - https://vk.com/dev/ads.getStatistics
    required String idsType,
    required List<int> ids,
    // TODO: Implement the enum. - https://vk.com/dev/ads.getStatistics
    required String period,
    required String dateFrom,
    required String dateTo,
    // TODO: Implement class for this parameter - https://vk.com/dev/ads.getStatistics
    Set<String>? statsFields,
  }) async {
    final data = await _api.call("ads.getStatistics", {
      "account_id": accountId,
      "ids_type": idsType,
      "ids": ids.join(","),
      "period": period,
      "date_from": dateFrom,
      "date_to": dateTo,
      if (statsFields != null) "stats_fields": statsFields.join(","),
    });

    return data.response;
  }

  /// Returns a set of suggestions for various targeting options.
  Future<Json> getSuggestions({
    // TODO: Implement the enum this parameter - https://vk.com/dev/ads.getSuggestions
    required String section,
    List<int>? ids,
    String? q,
    int? country,
    List<int>? cities,
  }) async {
    final data = await _api.call("ads.getSuggestions", {
      "section": section,
      if (ids != null) "ids": ids.join(","),
      if (q != null) "q": q,
      if (country != null) "country": country,
      if (cities != null) "cities": cities.join(","),
    });

    return data.response;
  }

  /// Returns a list of retargeting audiences.
  Future<List<Json>> getTargetGroups({
    required int accountId,
    int? clientId,
    @deprecated bool? extended,
  }) async {
    final data = await _api.call("ads.getTargetGroups", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns a list of retargeting pixels.
  Future<List<Json>> getTargetPixels({
    required int accountId,
    int? clientId,
  }) async {
    final data = await _api.call("ads.getTargetPixels", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
    });

    return data.response;
  }

  /// Returns the size of the target audience for the targeting, as well as the recommended CPC and CPM values.
  Future<Json> getTargetingStats({
    required int accountId,
    int? clientId,
    // TODO: Implement class for this parameter - https://vk.com/dev/ads.getTargetingStats
    Json? criteria,
    int? adId,
    // TODO: Implement the enum. - https://vk.com/dev/ads.getTargetingStats
    int? adFormat,
    // TODO: Implement the enum. - https://vk.com/dev/ads.getTargetingStats
    dynamic adPlatform,
    int? adPlatformNoWall,
    int? adPlatformNoAdNetwork,
    required String linkUrl,
    String? linkDomain,
    bool? needPrecise,
    int? impressionsLimitPeriod,
  }) async {
    final data = await _api.call("ads.getTargetingStats", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      if (criteria != null) "criteria": criteria,
      if (adId != null) "ad_id": adId,
      if (adFormat != null) "ad_format": adFormat,
      if (adPlatform != null) "ad_platform": adPlatform,
      if (adPlatformNoWall != null) "ad_platform_no_wall": adPlatformNoWall,
      if (adPlatformNoAdNetwork != null)
        "ad_platform_no_ad_network": adPlatformNoAdNetwork,
      "link_url": linkUrl,
      if (linkDomain != null) "link_domain": linkDomain,
      if (needPrecise != null) "need_precise": needPrecise,
      if (impressionsLimitPeriod != null)
        "impressions_limit_period": impressionsLimitPeriod,
    });

    return data.response;
  }

  /// Returns the URL to download the ad photo.
  Future<String> getUploadURL({
    // TODO: Implement the enum. - https://vk.com/dev/ads.getUploadURL
    int? adFormat,
    int? icon,
  }) async {
    final data = await _api.call("ads.getUploadURL", {
      if (adFormat != null) "ad_format": adFormat,
      if (icon != null) "icon": icon,
    });

    return data.response;
  }

  /// Returns the URL to download the video for the ad.
  Future<String> getVideoUploadURL() async {
    final data = await _api.call("ads.getVideoUploadURL", const {});

    return data.response;
  }

  /// Imports the list of advertiser's contacts to account for users registered on VKontakte in the retargeting audience.
  Future<int> importTargetContacts({
    required int accountId,
    int? clientId,
    required int targetGroupId,
    required List<String> contacts,
  }) async {
    final data = await _api.call("ads.importTargetContacts", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "target_group_id": targetGroupId,
      "contacts": contacts.join(","),
    });

    return data.response;
  }

  /// Removes administrators and/or observers from the ad cabinet.
  Future<List<bool>> removeOfficeUsers({
    required int accountId,
    required List<int> ids,
  }) async {
    final data = await _api.call("ads.removeOfficeUsers", {
      "account_id": accountId,
      "ids": ids,
    });

    return data.response;
  }

  /// Accepts the request to exclude the advertiser's contacts from the retargeting audience.
  Future<bool> removeTargetContacts({
    required int accountId,
    int? clientId,
    required int targetGroupId,
    required List<String> contacts,
  }) async {
    final data = await _api.call("ads.removeTargetContacts", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "target_group_id": targetGroupId,
      "contacts": contacts.join(","),
    });

    return data.response == 1;
  }

  /// Saves the search result for similar audiences.
  Future<Json> saveLookalikeRequestResult({
    required int accountId,
    int? clientId,
    required int requestId,
    required int level,
  }) async {
    final data = await _api.call("ads.saveLookalikeRequestResult", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "request_id": requestId,
      "level": level,
    });

    return data.response;
  }

  /// Provides access to a retargeting audience for another ad account. As a result of executing the method, the audience identifier for the specified cabinet is returned.
  Future<Json> shareTargetGroup({
    required int accountId,
    int? clientId,
    required int targetGroupId,
    int? shareWithClientId,
  }) async {
    final data = await _api.call("ads.shareTargetGroup", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "target_group_id": targetGroupId,
      if (shareWithClientId != null) "share_with_client_id": shareWithClientId,
    });

    return data.response;
  }

  /// Edits advertisements.
  Future<List<Json>> updateAds({
    required int accountId,
    // TODO: Implement class for this parameter - https://vk.com/dev/ads.updateAds
    required List<Json> data,
  }) async {
    final data_r = await _api.call("ads.updateAds", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Edits advertising campaigns.
  Future<List<Json>> updateCampaigns({
    required int accountId,
    // TODO: Implement class for this parameter - https://vk.com/dev/ads.updateCampaigns
    required List<Json> data,
  }) async {
    final data_r = await _api.call("ads.updateCampaigns", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Edits clients of an advertising agency.
  Future<List<Json>> updateClients({
    required int accountId,
    // TODO: Implement class for this parameter - https://vk.com/dev/ads.updateClients
    required List<Json> data,
  }) async {
    final data_r = await _api.call("ads.updateClients", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Adds/edits administrators and/or observers to the ad cabinet.
  Future<List<Json>> updateOfficeUsers({
    required int accountId,
    // TODO: Implement class for this parameter - https://vk.com/dev/ads.updateOfficeUsers
    required List<Json> data,
  }) async {
    final data_r = await _api.call("ads.updateOfficeUsers", {
      "account_id": accountId,
      "data": data,
    });

    return data_r.response;
  }

  /// Edits the retargeting audience.
  Future<bool> updateTargetGroup({
    required int accountId,
    int? clientId,
    required int targetGroupId,
    required String name,
    String? domain,
    required int lifetime,
    int? targetPixelId,
    // TODO: Find out what it is and implement a class for this parameter
    List<Json>? targetPixelRules,
  }) async {
    final data = await _api.call("ads.updateTargetGroup", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "target_group_id": targetGroupId,
      "name": name,
      if (domain != null) "domain": domain,
      "lifetime": lifetime,
      if (targetPixelId != null) "target_pixel_id": targetPixelId,
      if (targetPixelRules != null) "target_pixel_rules": targetPixelRules,
    });

    return data.response == 1;
  }

  /// Edits the retargeting pixel.
  Future<bool> updateTargetPixel({
    required int accountId,
    int? clientId,
    required int targetPixelId,
    required String name,
    String? domain,
    required int categoryId,
  }) async {
    final data = await _api.call("ads.updateTargetPixel", {
      "account_id": accountId,
      if (clientId != null) "client_id": clientId,
      "target_pixel_id": targetPixelId,
      "name": name,
      if (domain != null) "domain": domain,
      "category_id": categoryId,
    });

    return data.response == 1;
  }
}
