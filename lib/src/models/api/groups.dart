part of vk_library;

/// A class for using the [`groups`](https://vk.com/dev/groups) methods.
class Groups {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Groups(this._api);

  /// Allows you to add an address to the community.
  ///
  /// The list of addresses can be obtained using the [getAddresses] method.
  Future<Json> addAddress({
    required int groupId,
    required String title,
    required String address,
    String? additionalAddress,
    required int countryId,
    required int cityId,
    int? metroId,
    required num latitude,
    required num longitude,
    String? phone,
    String? workInfoStatus,
    // TODO: Implement the class.
    Json? timetable,
    bool? isMainAddress,
  }) async {
    final data = await _api.call("groups.addAddress", {
      "group_id": groupId,
      "title": title,
      "address": address,
      if (additionalAddress != null) "additional_address": additionalAddress,
      "country_id": countryId,
      "city_id": cityId,
      if (metroId != null) "metro_id": metroId,
      "latitude": latitude,
      "longitude": longitude,
      if (phone != null) "phone": phone,
      if (workInfoStatus != null) "work_info_status": workInfoStatus,
      if (timetable != null) "timetable": timetable,
      if (isMainAddress != null) "is_main_address": isMainAddress,
    });

    return data.response;
  }

  /// Adds a server for the [Callback API](https://vk.com/dev/callback_api) to the community.
  Future<Json> addCallbackServer({
    required int groupId,
    required String url,
    required String title,
    String? secretKey,
  }) async {
    final data = await _api.call("groups.addCallbackServer", {
      "group_id": groupId,
      "url": url,
      "title": title,
      if (secretKey != null) "secret_key": secretKey,
    });

    return data.response;
  }

  /// Allows you to add links to the community.
  ///
  /// The list of links can be obtained by the [getById] method with the **fields** = `links` parameter.
  Future<Json> addLink({
    required int groupId,
    required String link,
    String? text,
  }) async {
    final data = await _api.call("groups.addLink", {
      "group_id": groupId,
      "link": link,
      if (text != null) "text": text,
    });

    return data.response;
  }

  /// Allows you to approve a request to a group from a user.
  Future<bool> approveRequest({
    required int userId,
    required int groupId,
  }) async {
    final data = await _api.call("groups.approveRequest", {
      "user_id": userId,
      "group_id": groupId,
    });

    return data.response == 1;
  }

  /// Adds a user or group to the community blacklist.
  Future<bool> ban({
    required int groupId,
    int? ownerId,
    int? endDate,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.ban
    int? reason,
    String? comment,
    bool? commentVisible,
  }) async {
    final data = await _api.call("groups.ban", {
      "group_id": groupId,
      if (ownerId != null) "owner_id": ownerId,
      if (endDate != null) "end_date": endDate,
      if (reason != null) "reason": reason,
      if (comment != null) "comment": comment,
      if (commentVisible != null) "comment_visible": commentVisible,
    });

    return data.response == 1;
  }

  /// Creates a new community.
  Future<Json> create({
    required String title,
    String? description,
    // TODO: Implement the enum - https://vk.com/dev/groups.create
    String? type,
    int? publicCategory,
    int? publicSubcategory,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.create
    int? subtype,
  }) async {
    final data = await _api.call("groups.create", {
      "title": title,
      if (description != null) "description": description,
      if (type != null) "type": type,
      if (publicCategory != null) "public_category": publicCategory,
      if (publicSubcategory != null) "public_subcategory": publicSubcategory,
      if (subtype != null) "subtype": subtype,
    });

    return data.response;
  }

  /// Removes the community address.
  Future<bool> deleteAddress({
    required int groupId,
    required int addressId,
  }) async {
    final data = await _api.call("groups.deleteAddress", {
      "group_id": groupId,
      "address_id": addressId,
    });

    return data.response == 1;
  }

  /// Removes the server for the [Callback API](https://vk.com/dev/callback_api) from the community.
  Future<bool> deleteCallbackServer({
    required int groupId,
    required int serverId,
  }) async {
    final data = await _api.call("groups.deleteCallbackServer", {
      "group_id": groupId,
      "server_id": serverId,
    });

    return data.response == 1;
  }

  /// Allows you to remove links from the community.
  ///
  /// The list of links can be obtained by the [getById] method, with the **fields** = `links` parameter.
  Future<bool> deleteLink({required int groupId, required int linkId}) async {
    final data = await _api.call("groups.deleteLink", {
      "group_id": groupId,
      "link_id": linkId,
    });

    return data.response == 1;
  }

  /// Turns off `online` status in the community.
  Future<bool> disableOnline({required int groupId}) async {
    final data = await _api.call("groups.disableOnline", {"group_id": groupId});

    return data.response == 1;
  }

  /// Community edits.
  Future<bool> edit({
    required int groupId,
    String? title,
    String? description,
    String? screenName,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? access,
    String? website,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? subject,
    String? email,
    String? phone,
    String? rss,
    int? eventStartDate,
    int? eventFinishDate,
    int? eventGroupId,
    int? publicCategory,
    int? publicSubcategory,
    String? public_date,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? wall,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? topics,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? photos,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? video,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? audio,
    bool? links,
    bool? events,
    bool? places,
    bool? contacts,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? docs,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? wiki,
    bool? messages,
    bool? articles,
    bool? addresses,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? ageLimits,
    bool? market,
    // TODO: figure out what it is and implement the class.
    Json? marketButtons,
    bool? marketComments,
    List<int>? marketCountry,
    List<int>? marketCity,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.edit
    int? marketCurrency,
    int? marketContact,
    int? marketWiki,
    bool? obsceneFilter,
    bool? obsceneStopwords,
    List<String>? obsceneWords,
    int? mainSection,
    int? secondarySection,
    int? country,
    int? city,
  }) async {
    final data = await _api.call("groups.edit", {
      "group_id": groupId,
      if (title != null) "title": title,
      if (description != null) "description": description,
      if (screenName != null) "screen_name": screenName,
      if (access != null) "access": access,
      if (website != null) "website": website,
      if (subject != null) "subject": subject,
      if (email != null) "email": email,
      if (phone != null) "phone": phone,
      if (rss != null) "rss": rss,
      if (eventStartDate != null) "event_start_date": eventStartDate,
      if (eventFinishDate != null) "event_finish_date": eventFinishDate,
      if (eventGroupId != null) "event_group_id": eventGroupId,
      if (publicCategory != null) "public_category": publicCategory,
      if (publicSubcategory != null) "public_subcategory": publicSubcategory,
      if (public_date != null) "public_date": public_date,
      if (wall != null) "wall": wall,
      if (topics != null) "topics": topics,
      if (photos != null) "photos": photos,
      if (video != null) "video": video,
      if (audio != null) "audio": audio,
      if (links != null) "links": links,
      if (events != null) "events": events,
      if (places != null) "places": places,
      if (contacts != null) "contacts": contacts,
      if (docs != null) "docs": docs,
      if (wiki != null) "wiki": wiki,
      if (messages != null) "messages": messages,
      if (articles != null) "articles": articles,
      if (addresses != null) "addresses": addresses,
      if (ageLimits != null) "age_limits": ageLimits,
      if (market != null) "market": market,
      if (marketButtons != null) "market_buttons": marketButtons,
      if (marketComments != null) "market_comments": marketComments,
      if (marketCountry != null) "market_country": marketCountry.join(","),
      if (marketCity != null) "market_city": marketCity.join(","),
      if (marketCurrency != null) "market_currency": marketCurrency,
      if (marketContact != null) "market_contact": marketContact,
      if (marketWiki != null) "market_wiki": marketWiki,
      if (obsceneFilter != null) "obscene_filter": obsceneFilter,
      if (obsceneStopwords != null) "obscene_stopwords": obsceneStopwords,
      if (obsceneWords != null) "obscene_words": obsceneWords.join(","),
      if (mainSection != null) "main_section": mainSection,
      if (secondarySection != null) "secondary_section": secondarySection,
      if (country != null) "country": country,
      if (city != null) "city": city,
    });

    return data.response == 1;
  }

  /// Allows you to edit the address in the community.
  ///
  /// The list of addresses can be obtained using the [getAddresses] method.
  Future<Json> editAddress({
    required int groupId,
    required int addressId,
    String? title,
    String? address,
    String? additionalAddress,
    int? countryId,
    int? cityId,
    int? metroId,
    num? latitude,
    num? longitude,
    String? phone,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.editAddress
    String? workInfoStatus,
    // TODO: Implement the class. - https://vk.com/dev/groups.editAddress
    Json? timetable,
    bool? isMainAddress,
  }) async {
    final data = await _api.call("groups.editAddress", {
      "group_id": groupId,
      "address_id": addressId,
      if (title != null) "title": title,
      if (address != null) "address": address,
      if (additionalAddress != null) "additional_address": additionalAddress,
      if (countryId != null) "country_id": countryId,
      if (cityId != null) "city_id": cityId,
      if (metroId != null) "metro_id": metroId,
      if (latitude != null) "latitude": latitude,
      if (longitude != null) "longitude": longitude,
      if (phone != null) "phone": phone,
      if (workInfoStatus != null) "work_info_status": workInfoStatus,
      if (timetable != null) "timetable": timetable,
      if (isMainAddress != null) "is_main_address": isMainAddress,
    });

    return data.response;
  }

  /// Edits the server details for the Callback API in the community.
  Future<bool> editCallbackServer({
    required int groupId,
    required int serverId,
    required String url,
    required String title,
    String? secretKey,
  }) async {
    final data = await _api.call("groups.editCallbackServer", {
      "group_id": groupId,
      "server_id": serverId,
      "url": url,
      "title": title,
      if (secretKey != null) "secret_key": secretKey,
    });

    return data.response == 1;
  }

  /// Allows you to edit links in the community.
  Future<bool> editLink({
    required int groupId,
    required int linkId,
    String? text,
  }) async {
    final data = await _api.call("groups.editLink", {
      "group_id": groupId,
      "link_id": linkId,
      if (text != null) "text": text,
    });

    return data.response == 1;
  }

  /// Allows you to appoint / demote a leader in the community or change the level of his authority.
  Future<bool> editManager({
    required int groupId,
    required int userId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.editManager
    String? role,
    bool? isContact,
    String? contactPosition,
    String? contactPhone,
    String? contactEmail,
  }) async {
    final data = await _api.call("groups.editManager", {
      "group_id": groupId,
      "user_id": userId,
      if (role != null) "role": role,
      if (isContact != null) "is_contact": isContact,
      if (contactPosition != null) "contact_position": contactPosition,
      if (contactPhone != null) "contact_phone": contactPhone,
      if (contactEmail != null) "contact_email": contactEmail,
    });

    return data.response == 1;
  }

  /// Enables `online` status in the community.
  Future<bool> enableOnline({required int groupId}) async {
    final data = await _api.call("groups.enableOnline", {"group_id": groupId});

    return data.response == 1;
  }

  /// Returns a list of communities for the specified user.
  Future<Json> get({
    int? userId,
    bool? extended,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.get
    List<String>? filter,
    Set<String>? fields,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("groups.get", {
      if (userId != null) "user_id": userId,
      if (extended != null) "extended": extended,
      if (filter != null) "filter": filter.join(","),
      if (fields != null) "fields": fields.join(","),
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns the address of the specified community.
  Future<Json> getAddresses({
    required int groupId,
    List<int>? addressIds,
    num? latitude,
    num? longitude,
    int? offset,
    int? count,
    Set<String>? fields,
  }) async {
    final data = await _api.call("groups.getAddresses", {
      "group_id": groupId,
      if (addressIds != null) "address_ids": addressIds.join(","),
      if (latitude != null) "latitude": latitude,
      if (longitude != null) "longitude": longitude,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns a list of banned users and communities in the community.
  Future<Json> getBanned({
    required int groupId,
    int? offset,
    int? count,
    Set<String>? fields,
    int? ownerId,
  }) async {
    final data = await _api.call("groups.getBanned", {
      "group_id": groupId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response;
  }

  /// Returns information about a given community or multiple communities.
  Future<List<Json>> getById({
    List<String>? groupIds,
    String? groupId,
    Set<String>? fields,
  }) async {
    final data = await _api.call("groups.getById", {
      if (groupIds != null) "group_ids": groupIds.join(","),
      if (groupId != null) "group_id": groupId,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Retrieves the string required to confirm the server address in the [Callback API](https://vk.com/dev/callback_api).
  Future<String> getCallbackConfirmationCode({required int groupId}) async {
    final data = await _api.call("groups.getCallbackConfirmationCode", {
      "group_id": groupId,
    });

    return data.response;
  }

  /// Gets information about servers for the [Callback API](https://vk.com/dev/callback_api) in the community.
  Future<Json> getCallbackServers({
    required int groupId,
    List<int>? serverIds,
  }) async {
    final data = await _api.call("groups.getCallbackServers", {
      "group_id": groupId,
      if (serverIds != null) "server_ids": serverIds.join(","),
    });

    return data.response;
  }

  /// Allows you to get the [Callback API](https://vk.com/dev/callback_api) notification settings for the community.
  Future<Json> getCallbackSettings({
    required int groupId,
    int? serverId,
  }) async {
    final data = await _api.call("groups.getCallbackSettings", {
      "group_id": groupId,
      if (serverId != null) "server_id": serverId,
    });

    return data.response;
  }

  /// Returns a list of communities for the selected directory category.
  Future<Json> getCatalog({
    int? categoryId,
    int? subcategoryId,
  }) async {
    final data = await _api.call("groups.getCatalog", {
      if (categoryId != null) "category_id": categoryId,
      if (subcategoryId != null) "subcategory_id": subcategoryId,
    });

    return data.response;
  }

  /// Returns a list of categories for the community directory.
  Future<bool> getCatalogInfo({
    bool? extended,
    bool? subcategories,
  }) async {
    final data = await _api.call("groups.getCatalogInfo", {
      if (extended != null) "extended": extended,
      if (subcategories != null) "subcategories": subcategories,
    });

    return data.response == 1;
  }

  /// Returns a list of users who have been invited to the group.
  Future<Json> getInvitedUsers({
    required int groupId,
    int? offset,
    int? count,
    Set<String>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _api.call("groups.getInvitedUsers", {
      "group_id": groupId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.value,
    });

    return data.response;
  }

  /// This method returns a list of invitations to communities and meetings of the current user.
  Future<Json> getInvites({
    int? offset,
    int? count,
    bool? extended,
  }) async {
    final data = await _api.call("groups.getInvites", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns data for connecting to the Bots Longpoll API.
  Future<Json> getLongPollServer({required int groupId}) async {
    final data =
        await _api.call("groups.getLongPollServer", {"group_id": groupId});

    return data.response;
  }

  /// Gets the Bots Longpoll API settings for the community.
  Future<Json> getLongPollSettings({required int groupId}) async {
    final data = await _api.call("groups.getLongPollSettings", {
      "group_id": groupId,
    });

    return data.response;
  }

  /// Returns a list of community members.
  Future<Json> getMembers({
    String? groupId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.getMembers
    String? sort,
    int? offset,
    int? count,
    Set<String>? fields,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.getMembers
    String? filter,
  }) async {
    final data = await _api.call("groups.getMembers", {
      if (groupId != null) "group_id": groupId,
      if (sort != null) "sort": sort,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (filter != null) "filter": filter,
    });

    return data.response;
  }

  /// Gets information about the `online` status of the community.
  Future<Json> getOnlineStatus({required int groupId}) async {
    final data =
        await _api.call("groups.getOnlineStatus", {"group_id": groupId});

    return data.response;
  }

  /// Returns a list of applications to join the community.
  Future<Json> getRequests({
    required int groupId,
    int? offset,
    int? count,
    Set<String>? fields,
  }) async {
    final data = await _api.call("groups.getRequests", {
      "group_id": groupId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Retrieves the data required to display the community data edit page.
  Future<Json> getSettings({required int groupId}) async {
    final data = await _api.call("groups.getSettings", {"group_id": groupId});

    return data.response;
  }

  /// Returns a list of community tags.
  Future<List<Json>> getTagList({required int groupId}) async {
    final data = await _api.call("groups.getTagList", {"group_id": groupId});

    return data.response;
  }

  /// Returns the rights settings for a community token.
  Future<Json> getTokenPermissions() async {
    final data = await _api.call("groups.getTokenPermissions", const {});

    return data.response;
  }

  /// Allows you to invite friends to the group.
  Future<bool> invite({required int groupId, required int userId}) async {
    final data = await _api.call("groups.invite", {
      "group_id": groupId,
      "user_id": userId,
    });

    return data.response == 1;
  }

  /// Returns information about whether the user is a member of the community.
  Future<T> isMember<T extends Object>({
    required int groupId,
    int? userId,
    List<int>? userIds,
    bool? extended,
  }) async {
    final data = await _api.call("groups.isMember", {
      "group_id": groupId,
      if (userId != null) "user_id": userId,
      if (userIds != null) "user_ids": userIds.join(","),
      if (extended != null) "extended": extended,
    });

    return T == bool ? data.response == 1 : data.response;
  }

  /// This method allows you to join a group, a public page, and also confirm participation in a meeting.
  Future<bool> join({
    int? groupId,
    int? notSure,
  }) async {
    final data = await _api.call("groups.join", {
      if (groupId != null) "group_id": groupId,
      if (notSure != null) "not_sure": notSure,
    });

    return data.response == 1;
  }

  /// Allows you to leave the community or decline the invitation to the community.
  Future<bool> leave({required int groupId}) async {
    final data = await _api.call("groups.leave", {"group_id": groupId});

    return data.response == 1;
  }

  /// Allows you to exclude a user from a group or decline an application to join.
  Future<bool> removeUser({required int groupId, required int userId}) async {
    final data = await _api.call("groups.removeUser", {
      "group_id": groupId,
      "user_id": userId,
    });

    return data.response == 1;
  }

  /// Allows you to change the location of the link in the list.
  ///
  /// The list of links can be obtained by the [getById] method, with the **fields** = `links` parameter.
  Future<bool> reorderLink({
    required int groupId,
    required int linkId,
    int? after,
  }) async {
    final data = await _api.call("groups.reorderLink", {
      "group_id": groupId,
      "link_id": linkId,
      if (after != null) "after": after,
    });

    return data.response == 1;
  }

  /// Searches for communities by the specified substring.
  Future<Json> search({
    required String q,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.search
    String? type,
    int? countryId,
    int? cityId,
    bool? future,
    bool? market,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.search
    int? sort,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("groups.search", {
      "q": q,
      if (type != null) "type": type,
      if (countryId != null) "country_id": countryId,
      if (cityId != null) "city_id": cityId,
      if (future != null) "future": future,
      if (market != null) "market": market,
      if (sort != null) "sort": sort,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Allows you to configure settings for notifications about events in the [Callback API](https://vk.com/dev/callback_api).
  Future<bool> setCallbackSettings({
    required int groupId,
    int? serverId,
    String? apiVersion,
    bool? messageNew,
    bool? messageReply,
    bool? messageAllow,
    bool? messageEdit,
    bool? messageDeny,
    bool? messageTypingState,
    bool? photoNew,
    bool? audioNew,
    bool? videoNew,
    bool? wallReplyNew,
    bool? wallReplyEdit,
    bool? wallReplyDelete,
    bool? wallReplyRestore,
    bool? wallPostNew,
    bool? wallRepost,
    bool? boardPostNew,
    bool? boardPostEdit,
    bool? boardPostRestore,
    bool? boardPostDelete,
    bool? photoCommentNew,
    bool? photoCommentEdit,
    bool? photoCommentDelete,
    bool? photoCommentRestore,
    bool? videoCommentNew,
    bool? videoCommentEdit,
    bool? videoCommentDelete,
    bool? videoCommentRestore,
    bool? marketCommentNew,
    bool? marketCommentEdit,
    bool? marketCommentDelete,
    bool? marketCommentRestore,
    bool? marketOrderNew,
    bool? marketOrderEdit,
    bool? pollVoteNew,
    bool? groupJoin,
    bool? groupLeave,
    bool? groupChangeSettings,
    bool? groupChangePhoto,
    bool? groupOfficersEdit,
    bool? userBlock,
    bool? userUnblock,
    bool? leadFormsNew,
    bool? likeAdd,
    bool? likeRemove,
    bool? messageEvent,
    bool? donutSubscriptionCreate,
    bool? donutSubscriptionProlonged,
    bool? donutSubscriptionCancelled,
    bool? donutSubscriptionPriceChanged,
    bool? donutSubscriptionExpired,
    bool? donutMoneyWithdraw,
    bool? donutMoneyWithdrawError,
  }) async {
    final data = await _api.call("groups.setCallbackSettings", {
      "group_id": groupId,
      if (serverId != null) "server_id": serverId,
      if (apiVersion != null) "api_version": apiVersion,
      if (messageNew != null) "message_new": messageNew,
      if (messageReply != null) "message_reply": messageReply,
      if (messageAllow != null) "message_allow": messageAllow,
      if (messageEdit != null) "message_edit": messageEdit,
      if (messageDeny != null) "message_deny": messageDeny,
      if (messageTypingState != null)
        "message_typing_state": messageTypingState,
      if (photoNew != null) "photo_new": photoNew,
      if (audioNew != null) "audio_new": audioNew,
      if (videoNew != null) "video_new": videoNew,
      if (wallReplyNew != null) "wall_reply_new": wallReplyNew,
      if (wallReplyEdit != null) "wall_reply_edit": wallReplyEdit,
      if (wallReplyDelete != null) "wall_reply_delete": wallReplyDelete,
      if (wallReplyRestore != null) "wall_reply_restore": wallReplyRestore,
      if (wallPostNew != null) "wall_post_new": wallPostNew,
      if (wallRepost != null) "wall_repost": wallRepost,
      if (boardPostNew != null) "board_post_new": boardPostNew,
      if (boardPostEdit != null) "board_post_edit": boardPostEdit,
      if (boardPostRestore != null) "board_post_restore": boardPostRestore,
      if (boardPostDelete != null) "board_post_delete": boardPostDelete,
      if (photoCommentNew != null) "photo_comment_new": photoCommentNew,
      if (photoCommentEdit != null) "photo_comment_edit": photoCommentEdit,
      if (photoCommentDelete != null)
        "photo_comment_delete": photoCommentDelete,
      if (photoCommentRestore != null)
        "photo_comment_restore": photoCommentRestore,
      if (videoCommentNew != null) "video_comment_new": videoCommentNew,
      if (videoCommentEdit != null) "video_comment_edit": videoCommentEdit,
      if (videoCommentDelete != null)
        "video_comment_delete": videoCommentDelete,
      if (videoCommentRestore != null)
        "video_comment_restore": videoCommentRestore,
      if (marketCommentNew != null) "market_comment_new": marketCommentNew,
      if (marketCommentEdit != null) "market_comment_edit": marketCommentEdit,
      if (marketCommentDelete != null)
        "market_comment_delete": marketCommentDelete,
      if (marketCommentRestore != null)
        "market_comment_restore": marketCommentRestore,
      if (marketOrderNew != null) "market_order_new": marketOrderNew,
      if (marketOrderEdit != null) "market_order_edit": marketOrderEdit,
      if (pollVoteNew != null) "poll_vote_new": pollVoteNew,
      if (groupJoin != null) "group_join": groupJoin,
      if (groupLeave != null) "group_leave": groupLeave,
      if (groupChangeSettings != null)
        "group_change_settings": groupChangeSettings,
      if (groupChangePhoto != null) "group_change_photo": groupChangePhoto,
      if (groupOfficersEdit != null) "group_officers_edit": groupOfficersEdit,
      if (userBlock != null) "user_block": userBlock,
      if (userUnblock != null) "user_unblock": userUnblock,
      if (leadFormsNew != null) "lead_forms_new": leadFormsNew,
      if (likeAdd != null) "like_add": likeAdd,
      if (likeRemove != null) "like_remove": likeRemove,
      if (messageEvent != null) "message_event": messageEvent,
      if (donutSubscriptionCreate != null)
        "donut_subscription_create": donutSubscriptionCreate,
      if (donutSubscriptionProlonged != null)
        "donut_subscription_prolonged": donutSubscriptionProlonged,
      if (donutSubscriptionCancelled != null)
        "donut_subscription_cancelled": donutSubscriptionCancelled,
      if (donutSubscriptionPriceChanged != null)
        "donut_subscription_price_changed": donutSubscriptionPriceChanged,
      if (donutSubscriptionExpired != null)
        "donut_subscription_expired": donutSubscriptionExpired,
      if (donutMoneyWithdraw != null)
        "donut_money_withdraw": donutMoneyWithdraw,
      if (donutMoneyWithdrawError != null)
        "donut_money_withdraw_error": donutMoneyWithdrawError,
    });

    return data.response == 1;
  }

  /// Sets the settings for the Bots Long Poll API in the community.
  Future<bool> setLongPollSettings({
    required int groupId,
    bool? enabled,
    String? apiVersion,
    bool? messageNew,
    bool? messageReply,
    bool? messageAllow,
    bool? messageDeny,
    bool? messageEdit,
    bool? messageTypingState,
    bool? photoNew,
    bool? audioNew,
    bool? videoNew,
    bool? wallReplyNew,
    bool? wallReplyEdit,
    bool? wallReplyDelete,
    bool? wallReplyRestore,
    bool? wallPostNew,
    bool? wallRepost,
    bool? boardPostNew,
    bool? boardPostEdit,
    bool? boardPostRestore,
    bool? boardPostDelete,
    bool? photoCommentNew,
    bool? photoCommentEdit,
    bool? photoCommentDelete,
    bool? photoCommentRestore,
    bool? videoCommentNew,
    bool? videoCommentEdit,
    bool? videoCommentDelete,
    bool? videoCommentRestore,
    bool? marketCommentNew,
    bool? marketCommentEdit,
    bool? marketCommentDelete,
    bool? marketCommentRestore,
    bool? pollVoteNew,
    bool? groupJoin,
    bool? groupLeave,
    bool? groupChangeSettings,
    bool? groupChangePhoto,
    bool? groupOfficersEdit,
    bool? userBlock,
    bool? userUnblock,
    bool? likeAdd,
    bool? likeRemove,
    bool? messageEvent,
    bool? donutSubscriptionCreate,
    bool? donutSubscriptionProlonged,
    bool? donutSubscriptionCancelled,
    bool? donutSubscriptionPriceChanged,
    bool? donutSubscriptionExpired,
    bool? donutMoneyWithdraw,
    bool? donutMoneyWithdrawError,
  }) async {
    final data = await _api.call("groups.setLongPollSettings", {
      "group_id": groupId,
      if (enabled != null) "enabled": enabled,
      if (apiVersion != null) "api_version": apiVersion,
      if (messageNew != null) "message_new": messageNew,
      if (messageReply != null) "message_reply": messageReply,
      if (messageAllow != null) "message_allow": messageAllow,
      if (messageDeny != null) "message_deny": messageDeny,
      if (messageEdit != null) "message_edit": messageEdit,
      if (messageTypingState != null)
        "message_typing_state": messageTypingState,
      if (photoNew != null) "photo_new": photoNew,
      if (audioNew != null) "audio_new": audioNew,
      if (videoNew != null) "video_new": videoNew,
      if (wallReplyNew != null) "wall_reply_new": wallReplyNew,
      if (wallReplyEdit != null) "wall_reply_edit": wallReplyEdit,
      if (wallReplyDelete != null) "wall_reply_delete": wallReplyDelete,
      if (wallReplyRestore != null) "wall_reply_restore": wallReplyRestore,
      if (wallPostNew != null) "wall_post_new": wallPostNew,
      if (wallRepost != null) "wall_repost": wallRepost,
      if (boardPostNew != null) "board_post_new": boardPostNew,
      if (boardPostEdit != null) "board_post_edit": boardPostEdit,
      if (boardPostRestore != null) "board_post_restore": boardPostRestore,
      if (boardPostDelete != null) "board_post_delete": boardPostDelete,
      if (photoCommentNew != null) "photo_comment_new": photoCommentNew,
      if (photoCommentEdit != null) "photo_comment_edit": photoCommentEdit,
      if (photoCommentDelete != null)
        "photo_comment_delete": photoCommentDelete,
      if (photoCommentRestore != null)
        "photo_comment_restore": photoCommentRestore,
      if (videoCommentNew != null) "video_comment_new": videoCommentNew,
      if (videoCommentEdit != null) "video_comment_edit": videoCommentEdit,
      if (videoCommentDelete != null)
        "video_comment_delete": videoCommentDelete,
      if (videoCommentRestore != null)
        "video_comment_restore": videoCommentRestore,
      if (marketCommentNew != null) "market_comment_new": marketCommentNew,
      if (marketCommentEdit != null) "market_comment_edit": marketCommentEdit,
      if (marketCommentDelete != null)
        "market_comment_delete": marketCommentDelete,
      if (marketCommentRestore != null)
        "market_comment_restore": marketCommentRestore,
      if (pollVoteNew != null) "poll_vote_new": pollVoteNew,
      if (groupJoin != null) "group_join": groupJoin,
      if (groupLeave != null) "group_leave": groupLeave,
      if (groupChangeSettings != null)
        "group_change_settings": groupChangeSettings,
      if (groupChangePhoto != null) "group_change_photo": groupChangePhoto,
      if (groupOfficersEdit != null) "group_officers_edit": groupOfficersEdit,
      if (userBlock != null) "user_block": userBlock,
      if (userUnblock != null) "user_unblock": userUnblock,
      if (likeAdd != null) "like_add": likeAdd,
      if (likeRemove != null) "like_remove": likeRemove,
      if (messageEvent != null) "message_event": messageEvent,
      if (donutSubscriptionCreate != null)
        "donut_subscription_create": donutSubscriptionCreate,
      if (donutSubscriptionProlonged != null)
        "donut_subscription_prolonged": donutSubscriptionProlonged,
      if (donutSubscriptionCancelled != null)
        "donut_subscription_cancelled": donutSubscriptionCancelled,
      if (donutSubscriptionPriceChanged != null)
        "donut_subscription_price_changed": donutSubscriptionPriceChanged,
      if (donutSubscriptionExpired != null)
        "donut_subscription_expired": donutSubscriptionExpired,
      if (donutMoneyWithdraw != null)
        "donut_money_withdraw": donutMoneyWithdraw,
      if (donutMoneyWithdrawError != null)
        "donut_money_withdraw_error": donutMoneyWithdrawError,
    });

    return data.response == 1;
  }

  /// Sets community preferences
  Future<bool> setSettings({
    required int groupId,
    bool? messages,
    bool? botsCapabilities,
    bool? botsStartButton,
    bool? botsAddToChat,
  }) async {
    final data = await _api.call("groups.setSettings", {
      "group_id": groupId,
      if (messages != null) "messages": messages,
      if (botsCapabilities != null) "bots_capabilities": botsCapabilities,
      if (botsStartButton != null) "bots_start_button": botsStartButton,
      if (botsAddToChat != null) "bots_add_to_chat": botsAddToChat,
    });

    return data.response == 1;
  }

  /// Allows you to create or edit a note about the user as part of the user's correspondence with the community
  // TODO: Find out what is returning.
  Future<T> setUserNote<T extends Object>({
    required int groupId,
    required int userId,
    String? note,
  }) async {
    final data = await _api.call("groups.setUserNote", {
      "group_id": groupId,
      "user_id": userId,
      if (note != null) "note": note,
    });

    return data.response;
  }

  /// Allows you to add a new tag to the community
  // TODO: Find out what is returning.
  Future<T> tagAdd<T extends Object>({
    required int groupId,
    required String tagName,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.tagAdd
    String? tagColor,
  }) async {
    final data = await _api.call("groups.tagAdd", {
      "group_id": groupId,
      "tag_name": tagName,
      if (tagColor != null) "tag_color": tagColor,
    });

    return data.response;
  }

  /// Allows you to `bind` and `unbind` community tags to conversations.
  // TODO: Find out what is returning.
  Future<T> tagBind<T extends Object>({
    required int groupId,
    required int tagId,
    required int userId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.tagBind
    required String act,
  }) async {
    final data = await _api.call("groups.tagBind", {
      "group_id": groupId,
      "tag_id": tagId,
      "user_id": userId,
      "act": act,
    });

    return data.response;
  }

  /// Allows you to remove a community tag
  ///
  /// The deleted tag will be automatically `unlinked` from all conversations to which it was previously `linked`
  // TODO: Find out what is returning.
  Future<T> tagDelete<T extends Object>({
    required int groupId,
    required int tagId,
  }) async {
    final data = await _api.call("groups.tagDelete", {
      "group_id": groupId,
      "tag_id": tagId,
    });

    return data.response;
  }

  /// Allows you to rename an existing tag
  // TODO: Find out what is returning.
  Future<T> tagUpdate<T extends Object>({
    required int groupId,
    required int tagId,
    required String tagName,
  }) async {
    final data = await _api.call("groups.tagUpdate", {
      "group_id": groupId,
      "tag_id": tagId,
      "tag_name": tagName,
    });

    return data.response;
  }

  /// Switches the functionality of the `Products` section in the selected group.
  // TODO: Find out what is returning.
  Future<T> toggleMarket<T extends Object>({
    required int groupId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/groups.toggleMarket
    required String state,
    String? ref,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? utmContent,
    String? utmTerm,
    String? promocode,
  }) async {
    final data = await _api.call("groups.toggleMarket", {
      "group_id": groupId,
      "state": state,
      if (ref != null) "ref": ref,
      if (utmSource != null) "utm_source": utmSource,
      if (utmMedium != null) "utm_medium": utmMedium,
      if (utmCampaign != null) "utm_campaign": utmCampaign,
      if (utmContent != null) "utm_content": utmContent,
      if (utmTerm != null) "utm_term": utmTerm,
      if (promocode != null) "promocode": promocode,
    });

    return data.response;
  }

  /// Removes a user or group from the community blacklist.
  Future<bool> unban({required int groupId, int? ownerId}) async {
    final data = await _api.call("groups.unban", {
      "group_id": groupId,
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response == 1;
  }
}
