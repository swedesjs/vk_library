// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      id: json['id'] as int,
      dispatchTime: dateFromJson(json['date'] as int),
      peerId: json['peer_id'] as int,
      senderId: json['from_id'] as int,
      text: json['text'] as String,
      randomId: json['random_id'] as int?,
      ref: json['ref'] as String?,
      refSource: json['ref_source'] as String?,
      isOut: whetherNull(json['out'] as int?),
      isHidden: json['is_hidden'] as bool?,
      attachments: transformAttachments(json['attachments'] as List),
      isImportant: json['important'] as bool?,
      geo: json['geo'] == null
          ? null
          : MessageModelGeo.fromJson(json['geo'] as Map<String, dynamic>),
      payload: json['payload'] as String?,
      keyboard: json['keyboard'] as Map<String, dynamic>?,
      forwards: json['fwd_messages'] == null
          ? const MessageForwardsCollection(Iterable.empty())
          : MessageModel._toForwards(json['fwd_messages'] as List),
      replyMessage: json['reply_message'] == null
          ? null
          : MessageModel.fromJson(
              json['reply_message'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : MessageModelAction.fromJson(json['action'] as Map<String, dynamic>),
      adminAuthorId: json['admin_author_id'] as int?,
      conversationMessageId: json['conversation_message_id'] as int,
      isCropped: json['is_cropped'] as bool?,
      membersCount: json['members_count'] as int?,
      updateTime: dateNullFromJson(json['update_time'] as int?),
      wasListened: json['was_listened'] as bool?,
      pinnedAt: json['pinned_at'] as int?,
      messageTag: json['message_tag'] as String?,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'date': instance.dispatchTime.toIso8601String(),
    'peer_id': instance.peerId,
    'from_id': instance.senderId,
    'text': instance.text,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('random_id', instance.randomId);
  writeNotNull('ref', instance.ref);
  writeNotNull('ref_source', instance.refSource);
  writeNotNull('out', instance.isOut);
  writeNotNull('is_hidden', instance.isHidden);
  val['attachments'] = instance.attachments.map((e) => e.toJson()).toList();
  writeNotNull('important', instance.isImportant);
  writeNotNull('geo', instance.geo?.toJson());
  writeNotNull('payload', instance.payload);
  writeNotNull('keyboard', instance.keyboard);
  val['fwd_messages'] = instance.forwards.map((e) => e.toJson()).toList();
  writeNotNull('reply_message', instance.replyMessage?.toJson());
  writeNotNull('action', instance.action?.toJson());
  writeNotNull('admin_author_id', instance.adminAuthorId);
  val['conversation_message_id'] = instance.conversationMessageId;
  writeNotNull('is_cropped', instance.isCropped);
  writeNotNull('members_count', instance.membersCount);
  writeNotNull('update_time', instance.updateTime?.toIso8601String());
  writeNotNull('was_listened', instance.wasListened);
  writeNotNull('pinned_at', instance.pinnedAt);
  writeNotNull('message_tag', instance.messageTag);
  return val;
}

MessageModelGeo _$MessageModelGeoFromJson(Map<String, dynamic> json) =>
    MessageModelGeo(
      type: json['type'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : MessageModelGeoCoordinates.fromJson(
              json['coordinates'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : MessageModelGeoPlace.fromJson(
              json['place'] as Map<String, dynamic>),
      showmap: json['showmap'] as int?,
    );

Map<String, dynamic> _$MessageModelGeoToJson(MessageModelGeo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('coordinates', instance.coordinates?.toJson());
  writeNotNull('place', instance.place?.toJson());
  writeNotNull('showmap', instance.showmap);
  return val;
}

MessageModelGeoCoordinates _$MessageModelGeoCoordinatesFromJson(
        Map<String, dynamic> json) =>
    MessageModelGeoCoordinates(
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
    );

Map<String, dynamic> _$MessageModelGeoCoordinatesToJson(
    MessageModelGeoCoordinates instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  return val;
}

MessageModelGeoPlace _$MessageModelGeoPlaceFromJson(
        Map<String, dynamic> json) =>
    MessageModelGeoPlace(
      id: json['id'] as int?,
      title: json['title'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      created: json['created'] as int?,
      icon: json['icon'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$MessageModelGeoPlaceToJson(
    MessageModelGeoPlace instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('created', instance.created);
  writeNotNull('icon', instance.icon);
  writeNotNull('country', instance.country);
  writeNotNull('city', instance.city);
  return val;
}

MessageModelAction _$MessageModelActionFromJson(Map<String, dynamic> json) =>
    MessageModelAction(
      type: $enumDecodeNullable(_$MessageModelActionTypeEnumMap, json['type']),
      memberId: json['member_id'] as int?,
      text: json['text'] as String?,
      email: json['email'] as String?,
      photo: json['photo'] == null
          ? null
          : MessageModelActionPhoto.fromJson(
              json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageModelActionToJson(MessageModelAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$MessageModelActionTypeEnumMap[instance.type]);
  writeNotNull('member_id', instance.memberId);
  writeNotNull('text', instance.text);
  writeNotNull('email', instance.email);
  writeNotNull('photo', instance.photo?.toJson());
  return val;
}

const _$MessageModelActionTypeEnumMap = {
  MessageModelActionType.chatPhotoUpdate: 'chat_photo_update',
  MessageModelActionType.chatPhotoRemove: 'chat_photo_remove',
  MessageModelActionType.chatCreate: 'chat_create',
  MessageModelActionType.chatTitleUpdate: 'chat_title_update',
  MessageModelActionType.chatInviteUser: 'chat_invite_user',
  MessageModelActionType.chatKickUser: 'chat_kick_user',
  MessageModelActionType.chatPinMessage: 'chat_pin_message',
  MessageModelActionType.chatUnpinMessage: 'chat_unpin_message',
  MessageModelActionType.chatInviteUserByLink: 'chat_invite_user_by_link',
};

MessageModelActionPhoto _$MessageModelActionPhotoFromJson(
        Map<String, dynamic> json) =>
    MessageModelActionPhoto(
      photo_50: json['photo_50'] as String?,
      photo_100: json['photo_100'] as String?,
      photo_200: json['photo_200'] as String?,
    );

Map<String, dynamic> _$MessageModelActionPhotoToJson(
    MessageModelActionPhoto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('photo_50', instance.photo_50);
  writeNotNull('photo_100', instance.photo_100);
  writeNotNull('photo_200', instance.photo_200);
  return val;
}

UpdateGroupLongpoll _$UpdateGroupLongpollFromJson(Map<String, dynamic> json) =>
    UpdateGroupLongpoll(
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      version: json['v'] as String,
      object: json['object'] as Map<String, dynamic>,
      groupId: json['group_id'] as int,
    );

Map<String, dynamic> _$UpdateGroupLongpollToJson(
        UpdateGroupLongpoll instance) =>
    <String, dynamic>{
      'type': instance.type,
      'event_id': instance.eventId,
      'v': instance.version,
      'object': instance.object,
      'group_id': instance.groupId,
    };
