part of vk_library_options;

class CampaignSpecification {
  /// **For advertising agencies only.** id of the client in whose ad account the campaign will be created.
  final int? clientId;

  /// Campaign type.
  final TypeCampaignSpecification? type;

  /// The name of the ad campaign.
  final String? name;

  /// Daily limit in rubles.
  final int? dayLimit;

  /// Total limit in rubles.
  final int? allLimit;

  /// Campaign start time in `unixtime` format.
  final int? startTime;

  /// Time to stop the campaign in `unixtime` format.
  final int? stopTime;

  /// Advertising campaign status.
  final bool? status;

  const CampaignSpecification({
    this.clientId,
    this.type,
    this.name,
    this.dayLimit,
    this.allLimit,
    this.startTime,
    this.stopTime,
    this.status,
  });

  @override
  String toString() {
    return jsonEncode({
      if (clientId != null) "client_id": clientId,
      if (type != null) "type": type!.value,
      if (name != null) "name": name,
      if (dayLimit != null) "day_limit": dayLimit,
      if (allLimit != null) "all_limit": allLimit,
      if (startTime != null) "start_time": startTime,
      if (stopTime != null) "stop_time": stopTime,
      if (status != null) "status": status,
    });
  }
}

/// Campaign type.
enum TypeCampaignSpecification {
  /// A regular campaign in which you can create any ads other than those described in the following paragraphs.
  NORMAL,

  /// A campaign that can only advertise posts in the community.
  PROMOTED_POSTS,

  /// A campaign that can only advertise responsive ads.
  ADAPTIVE_ADS,
}
