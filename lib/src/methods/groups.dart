import 'package:vk_library/src/api.dart';

class Groups {
  final API _api;

  Groups(this._api);

  Future<Map<String, dynamic>> addAddress({
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
    String? timetable,
    bool? isMainAddress,
  }) =>
      _api.request('groups.addAddress', {
        'group_id': groupId,
        'title': title,
        'address': address,
        if (additionalAddress != null) 'additional_address': additionalAddress,
        'country_id': countryId,
        'city_id': cityId,
        if (metroId != null) 'metro_id': metroId,
        'latitude': latitude,
        'longitude': longitude,
        if (phone != null) 'phone': phone,
        if (workInfoStatus != null) 'work_info_status': workInfoStatus,
        if (timetable != null) 'timetable': timetable,
        if (isMainAddress != null) 'is_main_address': isMainAddress,
      });

  Future<Map<String, dynamic>> addCallbackServer({
    required int groupId,
    required String url,
    required String title,
    String? secretKey,
  }) =>
      _api.request('groups.addCallbackServer', {
        'group_id': groupId,
        'url': url,
        'title': title,
        if (secretKey != null) 'secret_key': secretKey,
      });

  Future<Map<String, dynamic>> addLink({
    required int groupId,
    required String link,
    String? text,
  }) =>
      _api.request('groups.addLink', {
        'group_id': groupId,
        'link': link,
        if (text != null) 'text': text,
      });

  Future<Map<String, dynamic>> approveRequest({
    required int groupId,
    required int userId,
  }) =>
      _api.request('groups.approveRequest', {
        'group_id': groupId,
        'user_id': userId,
      });

  Future<Map<String, dynamic>> ban({
    required int groupId,
    int? ownerId,
    int? endDate,
    int? reason,
    String? comment,
    bool? commentVisible,
  }) =>
      _api.request('groups.ban', {
        'group_id': groupId,
        if (ownerId != null) 'owner_id': ownerId,
        if (endDate != null) 'end_date': endDate,
        if (reason != null) 'reason': reason,
        if (comment != null) 'comment': comment,
        if (commentVisible != null) 'comment_visible': commentVisible,
      });

  Future<Map<String, dynamic>> create({
    required String title,
    String? description,
    String? type,
    int? publicCategory,
    int? publicSubcategory,
    int? subtype,
  }) =>
      _api.request('groups.create', {
        'title': title,
        if (description != null) 'description': description,
        if (type != null) 'type': type,
        if (publicCategory != null) 'public_category': publicCategory,
        if (publicSubcategory != null) 'public_subcategory': publicSubcategory,
        if (subtype != null) 'subtype': subtype,
      });

  Future<Map<String, dynamic>> deleteAddress({
    required int groupId,
    required int addressId,
  }) =>
      _api.request('groups.deleteAddress', {
        'group_id': groupId,
        'address_id': addressId,
      });

  Future<Map<String, dynamic>> deleteCallbackServer({
    required int groupId,
    required int serverId,
  }) =>
      _api.request('groups.deleteCallbackServer', {
        'group_id': groupId,
        'server_id': serverId,
      });

  Future<Map<String, dynamic>> deleteLink({
    required int groupId,
    required int linkId,
  }) =>
      _api.request('groups.deleteLink', {
        'group_id': groupId,
        'link_id': linkId,
      });

  Future<Map<String, dynamic>> disableOnline({
    required int groupId,
  }) =>
      _api.request('groups.disableOnline', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> edit({
    required int groupId,
    String? title,
    String? description,
    String? screenName,
    int? access,
    String? website,
    String? subject,
    String? email,
    String? phone,
    String? rss,
    int? eventStartDate,
    int? eventFinishDate,
    int? eventGroupId,
    int? publicCategory,
    int? publicSubcategory,
    String? publicDate,
    int? wall,
    int? topics,
    int? photos,
    int? video,
    int? audio,
    bool? links,
    bool? events,
    bool? places,
    bool? contacts,
    int? docs,
    int? wiki,
    bool? messages,
    bool? articles,
    bool? addresses,
    int? ageLimits,
    bool? market,
    bool? marketComments,
    List<int>? marketCountry,
    List<int>? marketCity,
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
  }) =>
      _api.request('groups.edit', {
        'group_id': groupId,
        if (title != null) 'title': title,
        if (description != null) 'description': description,
        if (screenName != null) 'screen_name': screenName,
        if (access != null) 'access': access,
        if (website != null) 'website': website,
        if (subject != null) 'subject': subject,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
        if (rss != null) 'rss': rss,
        if (eventStartDate != null) 'event_start_date': eventStartDate,
        if (eventFinishDate != null) 'event_finish_date': eventFinishDate,
        if (eventGroupId != null) 'event_group_id': eventGroupId,
        if (publicCategory != null) 'public_category': publicCategory,
        if (publicSubcategory != null) 'public_subcategory': publicSubcategory,
        if (publicDate != null) 'public_date': publicDate,
        if (wall != null) 'wall': wall,
        if (topics != null) 'topics': topics,
        if (photos != null) 'photos': photos,
        if (video != null) 'video': video,
        if (audio != null) 'audio': audio,
        if (links != null) 'links': links,
        if (events != null) 'events': events,
        if (places != null) 'places': places,
        if (contacts != null) 'contacts': contacts,
        if (docs != null) 'docs': docs,
        if (wiki != null) 'wiki': wiki,
        if (messages != null) 'messages': messages,
        if (articles != null) 'articles': articles,
        if (addresses != null) 'addresses': addresses,
        if (ageLimits != null) 'age_limits': ageLimits,
        if (market != null) 'market': market,
        if (marketComments != null) 'market_comments': marketComments,
        if (marketCountry != null) 'market_country': marketCountry.join(','),
        if (marketCity != null) 'market_city': marketCity.join(','),
        if (marketCurrency != null) 'market_currency': marketCurrency,
        if (marketContact != null) 'market_contact': marketContact,
        if (marketWiki != null) 'market_wiki': marketWiki,
        if (obsceneFilter != null) 'obscene_filter': obsceneFilter,
        if (obsceneStopwords != null) 'obscene_stopwords': obsceneStopwords,
        if (obsceneWords != null) 'obscene_words': obsceneWords.join(','),
        if (mainSection != null) 'main_section': mainSection,
        if (secondarySection != null) 'secondary_section': secondarySection,
        if (country != null) 'country': country,
        if (city != null) 'city': city,
      });

  Future<Map<String, dynamic>> editAddress({
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
    String? workInfoStatus,
    String? timetable,
    bool? isMainAddress,
  }) =>
      _api.request('groups.editAddress', {
        'group_id': groupId,
        'address_id': addressId,
        if (title != null) 'title': title,
        if (address != null) 'address': address,
        if (additionalAddress != null) 'additional_address': additionalAddress,
        if (countryId != null) 'country_id': countryId,
        if (cityId != null) 'city_id': cityId,
        if (metroId != null) 'metro_id': metroId,
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (phone != null) 'phone': phone,
        if (workInfoStatus != null) 'work_info_status': workInfoStatus,
        if (timetable != null) 'timetable': timetable,
        if (isMainAddress != null) 'is_main_address': isMainAddress,
      });

  Future<Map<String, dynamic>> editCallbackServer({
    required int groupId,
    required int serverId,
    required String url,
    required String title,
    String? secretKey,
  }) =>
      _api.request('groups.editCallbackServer', {
        'group_id': groupId,
        'server_id': serverId,
        'url': url,
        'title': title,
        if (secretKey != null) 'secret_key': secretKey,
      });

  Future<Map<String, dynamic>> editLink({
    required int groupId,
    required int linkId,
    String? text,
  }) =>
      _api.request('groups.editLink', {
        'group_id': groupId,
        'link_id': linkId,
        if (text != null) 'text': text,
      });

  Future<Map<String, dynamic>> editManager({
    required int groupId,
    required int userId,
    String? role,
    bool? isContact,
    String? contactPosition,
    String? contactPhone,
    String? contactEmail,
  }) =>
      _api.request('groups.editManager', {
        'group_id': groupId,
        'user_id': userId,
        if (role != null) 'role': role,
        if (isContact != null) 'is_contact': isContact,
        if (contactPosition != null) 'contact_position': contactPosition,
        if (contactPhone != null) 'contact_phone': contactPhone,
        if (contactEmail != null) 'contact_email': contactEmail,
      });

  Future<Map<String, dynamic>> enableOnline({
    required int groupId,
  }) =>
      _api.request('groups.enableOnline', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> get({
    int? userId,
    bool? extended,
    List<Object>? filter,
    List<Object>? fields,
    int? offset,
    int? count,
  }) =>
      _api.request('groups.get', {
        if (userId != null) 'user_id': userId,
        if (extended != null) 'extended': extended,
        if (filter != null) 'filter': filter.join(','),
        if (fields != null) 'fields': fields.join(','),
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> getAddresses({
    required int groupId,
    List<int>? addressIds,
    num? latitude,
    num? longitude,
    int? offset,
    int? count,
    List<Object>? fields,
  }) =>
      _api.request('groups.getAddresses', {
        'group_id': groupId,
        if (addressIds != null) 'address_ids': addressIds.join(','),
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> getBanned({
    required int groupId,
    int? offset,
    int? count,
    List<Object>? fields,
    int? ownerId,
  }) =>
      _api.request('groups.getBanned', {
        'group_id': groupId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
        if (ownerId != null) 'owner_id': ownerId,
      });

  Future<Map<String, dynamic>> getById({
    List<String>? groupIds,
    String? groupId,
    List<Object>? fields,
  }) =>
      _api.request('groups.getById', {
        if (groupIds != null) 'group_ids': groupIds.join(','),
        if (groupId != null) 'group_id': groupId,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> getCallbackConfirmationCode({
    required int groupId,
  }) =>
      _api.request('groups.getCallbackConfirmationCode', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> getCallbackServers({
    required int groupId,
    List<int>? serverIds,
  }) =>
      _api.request('groups.getCallbackServers', {
        'group_id': groupId,
        if (serverIds != null) 'server_ids': serverIds.join(','),
      });

  Future<Map<String, dynamic>> getCallbackSettings({
    required int groupId,
    int? serverId,
  }) =>
      _api.request('groups.getCallbackSettings', {
        'group_id': groupId,
        if (serverId != null) 'server_id': serverId,
      });

  Future<Map<String, dynamic>> getCatalog({
    int? categoryId,
    int? subcategoryId,
  }) =>
      _api.request('groups.getCatalog', {
        if (categoryId != null) 'category_id': categoryId,
        if (subcategoryId != null) 'subcategory_id': subcategoryId,
      });

  Future<Map<String, dynamic>> getCatalogInfo({
    bool? extended,
    bool? subcategories,
  }) =>
      _api.request('groups.getCatalogInfo', {
        if (extended != null) 'extended': extended,
        if (subcategories != null) 'subcategories': subcategories,
      });

  Future<Map<String, dynamic>> getInvitedUsers({
    required int groupId,
    int? offset,
    int? count,
    List<Object>? fields,
    String? nameCase,
  }) =>
      _api.request('groups.getInvitedUsers', {
        'group_id': groupId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
      });

  Future<Map<String, dynamic>> getInvites({
    int? offset,
    int? count,
    bool? extended,
  }) =>
      _api.request('groups.getInvites', {
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> getLongPollServer({
    required int groupId,
  }) =>
      _api.request('groups.getLongPollServer', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> getLongPollSettings({
    required int groupId,
  }) =>
      _api.request('groups.getLongPollSettings', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> getMembers({
    String? groupId,
    String? sort,
    int? offset,
    int? count,
    List<Object>? fields,
    String? filter,
  }) =>
      _api.request('groups.getMembers', {
        if (groupId != null) 'group_id': groupId,
        if (sort != null) 'sort': sort,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
        if (filter != null) 'filter': filter,
      });

  Future<Map<String, dynamic>> getRequests({
    required int groupId,
    int? offset,
    int? count,
    List<Object>? fields,
  }) =>
      _api.request('groups.getRequests', {
        'group_id': groupId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
      });

  Future<Map<String, dynamic>> getSettings({
    required int groupId,
  }) =>
      _api.request('groups.getSettings', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> getTagList({
    required int groupId,
  }) =>
      _api.request('groups.getTagList', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> getTokenPermissions() =>
      _api.request('groups.getTokenPermissions');

  Future<Map<String, dynamic>> invite({
    required int groupId,
    required int userId,
  }) =>
      _api.request('groups.invite', {
        'group_id': groupId,
        'user_id': userId,
      });

  Future<Map<String, dynamic>> isMember({
    required String groupId,
    int? userId,
    List<int>? userIds,
    bool? extended,
  }) =>
      _api.request('groups.isMember', {
        'group_id': groupId,
        if (userId != null) 'user_id': userId,
        if (userIds != null) 'user_ids': userIds.join(','),
        if (extended != null) 'extended': extended,
      });

  Future<Map<String, dynamic>> join({
    int? groupId,
    String? notSure,
  }) =>
      _api.request('groups.join', {
        if (groupId != null) 'group_id': groupId,
        if (notSure != null) 'not_sure': notSure,
      });

  Future<Map<String, dynamic>> leave({
    required int groupId,
  }) =>
      _api.request('groups.leave', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> removeUser({
    required int groupId,
    required int userId,
  }) =>
      _api.request('groups.removeUser', {
        'group_id': groupId,
        'user_id': userId,
      });

  Future<Map<String, dynamic>> reorderLink({
    required int groupId,
    required int linkId,
    int? after,
  }) =>
      _api.request('groups.reorderLink', {
        'group_id': groupId,
        'link_id': linkId,
        if (after != null) 'after': after,
      });

  Future<Map<String, dynamic>> search({
    required String q,
    String? type,
    int? countryId,
    int? cityId,
    bool? future,
    bool? market,
    int? sort,
    int? offset,
    int? count,
  }) =>
      _api.request('groups.search', {
        'q': q,
        if (type != null) 'type': type,
        if (countryId != null) 'country_id': countryId,
        if (cityId != null) 'city_id': cityId,
        if (future != null) 'future': future,
        if (market != null) 'market': market,
        if (sort != null) 'sort': sort,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  Future<Map<String, dynamic>> setCallbackSettings({
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
  }) =>
      _api.request('groups.setCallbackSettings', {
        'group_id': groupId,
        if (serverId != null) 'server_id': serverId,
        if (apiVersion != null) 'api_version': apiVersion,
        if (messageNew != null) 'message_new': messageNew,
        if (messageReply != null) 'message_reply': messageReply,
        if (messageAllow != null) 'message_allow': messageAllow,
        if (messageEdit != null) 'message_edit': messageEdit,
        if (messageDeny != null) 'message_deny': messageDeny,
        if (messageTypingState != null)
          'message_typing_state': messageTypingState,
        if (photoNew != null) 'photo_new': photoNew,
        if (audioNew != null) 'audio_new': audioNew,
        if (videoNew != null) 'video_new': videoNew,
        if (wallReplyNew != null) 'wall_reply_new': wallReplyNew,
        if (wallReplyEdit != null) 'wall_reply_edit': wallReplyEdit,
        if (wallReplyDelete != null) 'wall_reply_delete': wallReplyDelete,
        if (wallReplyRestore != null) 'wall_reply_restore': wallReplyRestore,
        if (wallPostNew != null) 'wall_post_new': wallPostNew,
        if (wallRepost != null) 'wall_repost': wallRepost,
        if (boardPostNew != null) 'board_post_new': boardPostNew,
        if (boardPostEdit != null) 'board_post_edit': boardPostEdit,
        if (boardPostRestore != null) 'board_post_restore': boardPostRestore,
        if (boardPostDelete != null) 'board_post_delete': boardPostDelete,
        if (photoCommentNew != null) 'photo_comment_new': photoCommentNew,
        if (photoCommentEdit != null) 'photo_comment_edit': photoCommentEdit,
        if (photoCommentDelete != null)
          'photo_comment_delete': photoCommentDelete,
        if (photoCommentRestore != null)
          'photo_comment_restore': photoCommentRestore,
        if (videoCommentNew != null) 'video_comment_new': videoCommentNew,
        if (videoCommentEdit != null) 'video_comment_edit': videoCommentEdit,
        if (videoCommentDelete != null)
          'video_comment_delete': videoCommentDelete,
        if (videoCommentRestore != null)
          'video_comment_restore': videoCommentRestore,
        if (marketCommentNew != null) 'market_comment_new': marketCommentNew,
        if (marketCommentEdit != null) 'market_comment_edit': marketCommentEdit,
        if (marketCommentDelete != null)
          'market_comment_delete': marketCommentDelete,
        if (marketCommentRestore != null)
          'market_comment_restore': marketCommentRestore,
        if (marketOrderNew != null) 'market_order_new': marketOrderNew,
        if (marketOrderEdit != null) 'market_order_edit': marketOrderEdit,
        if (pollVoteNew != null) 'poll_vote_new': pollVoteNew,
        if (groupJoin != null) 'group_join': groupJoin,
        if (groupLeave != null) 'group_leave': groupLeave,
        if (groupChangeSettings != null)
          'group_change_settings': groupChangeSettings,
        if (groupChangePhoto != null) 'group_change_photo': groupChangePhoto,
        if (groupOfficersEdit != null) 'group_officers_edit': groupOfficersEdit,
        if (userBlock != null) 'user_block': userBlock,
        if (userUnblock != null) 'user_unblock': userUnblock,
        if (leadFormsNew != null) 'lead_forms_new': leadFormsNew,
        if (likeAdd != null) 'like_add': likeAdd,
        if (likeRemove != null) 'like_remove': likeRemove,
        if (messageEvent != null) 'message_event': messageEvent,
        if (donutSubscriptionCreate != null)
          'donut_subscription_create': donutSubscriptionCreate,
        if (donutSubscriptionProlonged != null)
          'donut_subscription_prolonged': donutSubscriptionProlonged,
        if (donutSubscriptionCancelled != null)
          'donut_subscription_cancelled': donutSubscriptionCancelled,
        if (donutSubscriptionPriceChanged != null)
          'donut_subscription_price_changed': donutSubscriptionPriceChanged,
        if (donutSubscriptionExpired != null)
          'donut_subscription_expired': donutSubscriptionExpired,
        if (donutMoneyWithdraw != null)
          'donut_money_withdraw': donutMoneyWithdraw,
        if (donutMoneyWithdrawError != null)
          'donut_money_withdraw_error': donutMoneyWithdrawError,
      });

  Future<Map<String, dynamic>> setLongPollSettings({
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
  }) =>
      _api.request('groups.setLongPollSettings', {
        'group_id': groupId,
        if (enabled != null) 'enabled': enabled,
        if (apiVersion != null) 'api_version': apiVersion,
        if (messageNew != null) 'message_new': messageNew,
        if (messageReply != null) 'message_reply': messageReply,
        if (messageAllow != null) 'message_allow': messageAllow,
        if (messageDeny != null) 'message_deny': messageDeny,
        if (messageEdit != null) 'message_edit': messageEdit,
        if (messageTypingState != null)
          'message_typing_state': messageTypingState,
        if (photoNew != null) 'photo_new': photoNew,
        if (audioNew != null) 'audio_new': audioNew,
        if (videoNew != null) 'video_new': videoNew,
        if (wallReplyNew != null) 'wall_reply_new': wallReplyNew,
        if (wallReplyEdit != null) 'wall_reply_edit': wallReplyEdit,
        if (wallReplyDelete != null) 'wall_reply_delete': wallReplyDelete,
        if (wallReplyRestore != null) 'wall_reply_restore': wallReplyRestore,
        if (wallPostNew != null) 'wall_post_new': wallPostNew,
        if (wallRepost != null) 'wall_repost': wallRepost,
        if (boardPostNew != null) 'board_post_new': boardPostNew,
        if (boardPostEdit != null) 'board_post_edit': boardPostEdit,
        if (boardPostRestore != null) 'board_post_restore': boardPostRestore,
        if (boardPostDelete != null) 'board_post_delete': boardPostDelete,
        if (photoCommentNew != null) 'photo_comment_new': photoCommentNew,
        if (photoCommentEdit != null) 'photo_comment_edit': photoCommentEdit,
        if (photoCommentDelete != null)
          'photo_comment_delete': photoCommentDelete,
        if (photoCommentRestore != null)
          'photo_comment_restore': photoCommentRestore,
        if (videoCommentNew != null) 'video_comment_new': videoCommentNew,
        if (videoCommentEdit != null) 'video_comment_edit': videoCommentEdit,
        if (videoCommentDelete != null)
          'video_comment_delete': videoCommentDelete,
        if (videoCommentRestore != null)
          'video_comment_restore': videoCommentRestore,
        if (marketCommentNew != null) 'market_comment_new': marketCommentNew,
        if (marketCommentEdit != null) 'market_comment_edit': marketCommentEdit,
        if (marketCommentDelete != null)
          'market_comment_delete': marketCommentDelete,
        if (marketCommentRestore != null)
          'market_comment_restore': marketCommentRestore,
        if (pollVoteNew != null) 'poll_vote_new': pollVoteNew,
        if (groupJoin != null) 'group_join': groupJoin,
        if (groupLeave != null) 'group_leave': groupLeave,
        if (groupChangeSettings != null)
          'group_change_settings': groupChangeSettings,
        if (groupChangePhoto != null) 'group_change_photo': groupChangePhoto,
        if (groupOfficersEdit != null) 'group_officers_edit': groupOfficersEdit,
        if (userBlock != null) 'user_block': userBlock,
        if (userUnblock != null) 'user_unblock': userUnblock,
        if (likeAdd != null) 'like_add': likeAdd,
        if (likeRemove != null) 'like_remove': likeRemove,
        if (messageEvent != null) 'message_event': messageEvent,
        if (donutSubscriptionCreate != null)
          'donut_subscription_create': donutSubscriptionCreate,
        if (donutSubscriptionProlonged != null)
          'donut_subscription_prolonged': donutSubscriptionProlonged,
        if (donutSubscriptionCancelled != null)
          'donut_subscription_cancelled': donutSubscriptionCancelled,
        if (donutSubscriptionPriceChanged != null)
          'donut_subscription_price_changed': donutSubscriptionPriceChanged,
        if (donutSubscriptionExpired != null)
          'donut_subscription_expired': donutSubscriptionExpired,
        if (donutMoneyWithdraw != null)
          'donut_money_withdraw': donutMoneyWithdraw,
        if (donutMoneyWithdrawError != null)
          'donut_money_withdraw_error': donutMoneyWithdrawError,
      });

  Future<Map<String, dynamic>> setSettings({
    required int groupId,
    bool? messages,
    bool? botsCapabilities,
    bool? botsStartButton,
    bool? botsAddToChat,
  }) =>
      _api.request('groups.setSettings', {
        'group_id': groupId,
        if (messages != null) 'messages': messages,
        if (botsCapabilities != null) 'bots_capabilities': botsCapabilities,
        if (botsStartButton != null) 'bots_start_button': botsStartButton,
        if (botsAddToChat != null) 'bots_add_to_chat': botsAddToChat,
      });

  Future<Map<String, dynamic>> setUserNote({
    required int groupId,
    required int userId,
    String? note,
  }) =>
      _api.request('groups.setUserNote', {
        'group_id': groupId,
        'user_id': userId,
        if (note != null) 'note': note,
      });

  Future<Map<String, dynamic>> tagAdd({
    required int groupId,
    required String tagName,
    String? tagColor,
  }) =>
      _api.request('groups.tagAdd', {
        'group_id': groupId,
        'tag_name': tagName,
        if (tagColor != null) 'tag_color': tagColor,
      });

  Future<Map<String, dynamic>> tagBind({
    required int groupId,
    required int tagId,
    required int userId,
    required String act,
  }) =>
      _api.request('groups.tagBind', {
        'group_id': groupId,
        'tag_id': tagId,
        'user_id': userId,
        'act': act,
      });

  Future<Map<String, dynamic>> tagDelete({
    required int groupId,
    required int tagId,
  }) =>
      _api.request('groups.tagDelete', {
        'group_id': groupId,
        'tag_id': tagId,
      });

  Future<Map<String, dynamic>> tagUpdate({
    required int groupId,
    required int tagId,
    required String tagName,
  }) =>
      _api.request('groups.tagUpdate', {
        'group_id': groupId,
        'tag_id': tagId,
        'tag_name': tagName,
      });

  Future<Map<String, dynamic>> toggleMarket({
    required int groupId,
    required String state,
    String? ref,
  }) =>
      _api.request('groups.toggleMarket', {
        'group_id': groupId,
        'state': state,
        if (ref != null) 'ref': ref,
      });

  Future<Map<String, dynamic>> unban({
    required int groupId,
    int? ownerId,
  }) =>
      _api.request('groups.unban', {
        'group_id': groupId,
        if (ownerId != null) 'owner_id': ownerId,
      });
}
