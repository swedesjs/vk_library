import 'package:vk_library/src/api.dart';

class Ads {
  final API _api;

  Ads(this._api);

  /// Adds managers and/or supervisors to advertising account.
  Future<Map<String, dynamic>> addOfficeUsers({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.addOfficeUsers', {
        'account_id': accountId,
        'data': data,
      });

  /// Allows to check the ad link.
  Future<Map<String, dynamic>> checkLink({
    required int accountId,
    required String linkType,
    required String linkUrl,
    int? campaignId,
  }) =>
      _api.request('ads.checkLink', {
        'account_id': accountId,
        'link_type': linkType,
        'link_url': linkUrl,
        if (campaignId != null) 'campaign_id': campaignId,
      });

  /// Creates ads.
  Future<Map<String, dynamic>> createAds({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.createAds', {
        'account_id': accountId,
        'data': data,
      });

  /// Creates advertising campaigns.
  Future<Map<String, dynamic>> createCampaigns({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.createCampaigns', {
        'account_id': accountId,
        'data': data,
      });

  /// Creates clients of an advertising agency.
  Future<Map<String, dynamic>> createClients({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.createClients', {
        'account_id': accountId,
        'data': data,
      });

  /// Creates a group to re-target ads for users who visited advertiser's site (viewed information about the product, registered, etc.).
  Future<Map<String, dynamic>> createTargetGroup({
    required int accountId,
    int? clientId,
    required String name,
    required int lifetime,
    int? targetPixelId,
    String? targetPixelRules,
  }) =>
      _api.request('ads.createTargetGroup', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        'name': name,
        'lifetime': lifetime,
        if (targetPixelId != null) 'target_pixel_id': targetPixelId,
        if (targetPixelRules != null) 'target_pixel_rules': targetPixelRules,
      });

  /// Archives ads.
  Future<Map<String, dynamic>> deleteAds({
    required int accountId,
    required String ids,
  }) =>
      _api.request('ads.deleteAds', {
        'account_id': accountId,
        'ids': ids,
      });

  /// Archives advertising campaigns.
  Future<Map<String, dynamic>> deleteCampaigns({
    required int accountId,
    required String ids,
  }) =>
      _api.request('ads.deleteCampaigns', {
        'account_id': accountId,
        'ids': ids,
      });

  /// Archives clients of an advertising agency.
  Future<Map<String, dynamic>> deleteClients({
    required int accountId,
    required String ids,
  }) =>
      _api.request('ads.deleteClients', {
        'account_id': accountId,
        'ids': ids,
      });

  /// Deletes a retarget group.
  Future<Map<String, dynamic>> deleteTargetGroup({
    required int accountId,
    int? clientId,
    required int targetGroupId,
  }) =>
      _api.request('ads.deleteTargetGroup', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        'target_group_id': targetGroupId,
      });

  /// Returns a list of advertising accounts.
  Future<Map<String, dynamic>> getAccounts() => _api.request('ads.getAccounts');

  /// Returns number of ads.
  Future<Map<String, dynamic>> getAds({
    required int accountId,
    String? adIds,
    String? campaignIds,
    int? clientId,
    bool? includeDeleted,
    bool? onlyDeleted,
    int? limit,
    int? offset,
  }) =>
      _api.request('ads.getAds', {
        'account_id': accountId,
        if (adIds != null) 'ad_ids': adIds,
        if (campaignIds != null) 'campaign_ids': campaignIds,
        if (clientId != null) 'client_id': clientId,
        if (includeDeleted != null) 'include_deleted': includeDeleted,
        if (onlyDeleted != null) 'only_deleted': onlyDeleted,
        if (limit != null) 'limit': limit,
        if (offset != null) 'offset': offset,
      });

  /// Returns descriptions of ad layouts.
  Future<Map<String, dynamic>> getAdsLayout({
    required int accountId,
    int? clientId,
    bool? includeDeleted,
    bool? onlyDeleted,
    String? campaignIds,
    String? adIds,
    int? limit,
    int? offset,
  }) =>
      _api.request('ads.getAdsLayout', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        if (includeDeleted != null) 'include_deleted': includeDeleted,
        if (onlyDeleted != null) 'only_deleted': onlyDeleted,
        if (campaignIds != null) 'campaign_ids': campaignIds,
        if (adIds != null) 'ad_ids': adIds,
        if (limit != null) 'limit': limit,
        if (offset != null) 'offset': offset,
      });

  /// Returns ad targeting parameters.
  Future<Map<String, dynamic>> getAdsTargeting({
    required int accountId,
    String? adIds,
    String? campaignIds,
    int? clientId,
    bool? includeDeleted,
    int? limit,
    int? offset,
  }) =>
      _api.request('ads.getAdsTargeting', {
        'account_id': accountId,
        if (adIds != null) 'ad_ids': adIds,
        if (campaignIds != null) 'campaign_ids': campaignIds,
        if (clientId != null) 'client_id': clientId,
        if (includeDeleted != null) 'include_deleted': includeDeleted,
        if (limit != null) 'limit': limit,
        if (offset != null) 'offset': offset,
      });

  /// Returns current budget of the advertising account.
  Future<Map<String, dynamic>> getBudget({
    required int accountId,
  }) =>
      _api.request('ads.getBudget', {
        'account_id': accountId,
      });

  /// Returns a list of campaigns in an advertising account.
  Future<Map<String, dynamic>> getCampaigns({
    required int accountId,
    int? clientId,
    bool? includeDeleted,
    String? campaignIds,
    List<String>? fields,
  }) =>
      _api.request('ads.getCampaigns', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        if (includeDeleted != null) 'include_deleted': includeDeleted,
        if (campaignIds != null) 'campaign_ids': campaignIds,
        if (fields != null) 'fields': fields.join(','),
      });

  /// Returns a list of possible ad categories.
  Future<Map<String, dynamic>> getCategories({
    String? lang,
  }) =>
      _api.request('ads.getCategories', {
        if (lang != null) 'lang': lang,
      });

  /// Returns a list of advertising agency's clients.
  Future<Map<String, dynamic>> getClients({
    required int accountId,
  }) =>
      _api.request('ads.getClients', {
        'account_id': accountId,
      });

  /// Returns demographics for ads or campaigns.
  Future<Map<String, dynamic>> getDemographics({
    required int accountId,
    required String idsType,
    required String ids,
    required String period,
    required String dateFrom,
    required String dateTo,
  }) =>
      _api.request('ads.getDemographics', {
        'account_id': accountId,
        'ids_type': idsType,
        'ids': ids,
        'period': period,
        'date_from': dateFrom,
        'date_to': dateTo,
      });

  /// Returns information about current state of a counter — number of remaining runs of methods and time to the next counter nulling in seconds.
  Future<Map<String, dynamic>> getFloodStats({
    required int accountId,
  }) =>
      _api.request('ads.getFloodStats', {
        'account_id': accountId,
      });

  Future<Map<String, dynamic>> getLookalikeRequests({
    required int accountId,
    int? clientId,
    String? requestsIds,
    int? offset,
    int? limit,
    String? sortBy,
  }) =>
      _api.request('ads.getLookalikeRequests', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        if (requestsIds != null) 'requests_ids': requestsIds,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        if (sortBy != null) 'sort_by': sortBy,
      });

  Future<Map<String, dynamic>> getMusicians({
    required String artistName,
  }) =>
      _api.request('ads.getMusicians', {
        'artist_name': artistName,
      });

  Future<Map<String, dynamic>> getMusiciansByIds({
    required List<int> ids,
  }) =>
      _api.request('ads.getMusiciansByIds', {
        'ids': ids.join(','),
      });

  /// Returns a list of managers and supervisors of advertising account.
  Future<Map<String, dynamic>> getOfficeUsers({
    required int accountId,
  }) =>
      _api.request('ads.getOfficeUsers', {
        'account_id': accountId,
      });

  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  Future<Map<String, dynamic>> getPostsReach({
    required int accountId,
    required String idsType,
    required String ids,
  }) =>
      _api.request('ads.getPostsReach', {
        'account_id': accountId,
        'ids_type': idsType,
        'ids': ids,
      });

  /// Returns a reason of ad rejection for pre-moderation.
  Future<Map<String, dynamic>> getRejectionReason({
    required int accountId,
    required int adId,
  }) =>
      _api.request('ads.getRejectionReason', {
        'account_id': accountId,
        'ad_id': adId,
      });

  /// Returns statistics of performance indicators for ads, campaigns, clients or the whole account.
  Future<Map<String, dynamic>> getStatistics({
    required int accountId,
    required String idsType,
    required String ids,
    required String period,
    required String dateFrom,
    required String dateTo,
    List<String>? statsFields,
  }) =>
      _api.request('ads.getStatistics', {
        'account_id': accountId,
        'ids_type': idsType,
        'ids': ids,
        'period': period,
        'date_from': dateFrom,
        'date_to': dateTo,
        if (statsFields != null) 'stats_fields': statsFields.join(','),
      });

  /// Returns a set of auto-suggestions for various targeting parameters.
  Future<Map<String, dynamic>> getSuggestions({
    required String section,
    String? ids,
    String? q,
    int? country,
    String? cities,
    String? lang,
  }) =>
      _api.request('ads.getSuggestions', {
        'section': section,
        if (ids != null) 'ids': ids,
        if (q != null) 'q': q,
        if (country != null) 'country': country,
        if (cities != null) 'cities': cities,
        if (lang != null) 'lang': lang,
      });

  /// Returns a list of target groups.
  Future<Map<String, dynamic>> getTargetGroups({
    required int accountId,
    int? clientId,
    bool? extended,
  }) =>
      _api.request('ads.getTargetGroups', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        if (extended != null) 'extended': extended,
      });

  /// Returns the size of targeting audience, and also recommended values for CPC and CPM.
  Future<Map<String, dynamic>> getTargetingStats({
    required int accountId,
    int? clientId,
    String? criteria,
    int? adId,
    int? adFormat,
    String? adPlatform,
    String? adPlatformNoWall,
    String? adPlatformNoAdNetwork,
    String? publisherPlatforms,
    required String linkUrl,
    String? linkDomain,
    bool? needPrecise,
    int? impressionsLimitPeriod,
  }) =>
      _api.request('ads.getTargetingStats', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        if (criteria != null) 'criteria': criteria,
        if (adId != null) 'ad_id': adId,
        if (adFormat != null) 'ad_format': adFormat,
        if (adPlatform != null) 'ad_platform': adPlatform,
        if (adPlatformNoWall != null) 'ad_platform_no_wall': adPlatformNoWall,
        if (adPlatformNoAdNetwork != null)
          'ad_platform_no_ad_network': adPlatformNoAdNetwork,
        if (publisherPlatforms != null)
          'publisher_platforms': publisherPlatforms,
        'link_url': linkUrl,
        if (linkDomain != null) 'link_domain': linkDomain,
        if (needPrecise != null) 'need_precise': needPrecise,
        if (impressionsLimitPeriod != null)
          'impressions_limit_period': impressionsLimitPeriod,
      });

  /// Returns URL to upload an ad photo to.
  Future<Map<String, dynamic>> getUploadURL({
    required int adFormat,
    int? icon,
  }) =>
      _api.request('ads.getUploadURL', {
        'ad_format': adFormat,
        if (icon != null) 'icon': icon,
      });

  /// Returns URL to upload an ad video to.
  Future<Map<String, dynamic>> getVideoUploadURL() =>
      _api.request('ads.getVideoUploadURL');

  /// Imports a list of advertiser's contacts to count VK registered users against the target group.
  Future<Map<String, dynamic>> importTargetContacts({
    required int accountId,
    int? clientId,
    required int targetGroupId,
    required String contacts,
  }) =>
      _api.request('ads.importTargetContacts', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        'target_group_id': targetGroupId,
        'contacts': contacts,
      });

  /// Removes managers and/or supervisors from advertising account.
  Future<Map<String, dynamic>> removeOfficeUsers({
    required int accountId,
    required String ids,
  }) =>
      _api.request('ads.removeOfficeUsers', {
        'account_id': accountId,
        'ids': ids,
      });

  /// Edits ads.
  Future<Map<String, dynamic>> updateAds({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.updateAds', {
        'account_id': accountId,
        'data': data,
      });

  /// Edits advertising campaigns.
  Future<Map<String, dynamic>> updateCampaigns({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.updateCampaigns', {
        'account_id': accountId,
        'data': data,
      });

  /// Edits clients of an advertising agency.
  Future<Map<String, dynamic>> updateClients({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.updateClients', {
        'account_id': accountId,
        'data': data,
      });

  /// Adds managers and/or supervisors to advertising account.
  Future<Map<String, dynamic>> updateOfficeUsers({
    required int accountId,
    required String data,
  }) =>
      _api.request('ads.updateOfficeUsers', {
        'account_id': accountId,
        'data': data,
      });

  /// Edits a retarget group.
  Future<Map<String, dynamic>> updateTargetGroup({
    required int accountId,
    int? clientId,
    required int targetGroupId,
    required String name,
    String? domain,
    required int lifetime,
    int? targetPixelId,
    String? targetPixelRules,
  }) =>
      _api.request('ads.updateTargetGroup', {
        'account_id': accountId,
        if (clientId != null) 'client_id': clientId,
        'target_group_id': targetGroupId,
        'name': name,
        if (domain != null) 'domain': domain,
        'lifetime': lifetime,
        if (targetPixelId != null) 'target_pixel_id': targetPixelId,
        if (targetPixelRules != null) 'target_pixel_rules': targetPixelRules,
      });
}
