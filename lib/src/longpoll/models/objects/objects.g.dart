// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentObject _$CommentObjectFromJson(Map<String, dynamic> json) =>
    CommentObject(
      id: json['id'] as int?,
      fromId: json['from_id'] as int?,
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      text: json['text'] as String?,
      donut: json['donut'] == null
          ? null
          : CommentObjectDonut.fromJson(json['donut'] as Map<String, dynamic>),
      replyToUser: json['reply_to_user'] as int?,
      replyToComment: json['reply_to_comment'] as int?,
      attachments: transformAttachments(json['attachments'] as List),
      parentsStack: (json['parents_stack'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      thread: json['thread'] == null
          ? null
          : CommentObjectThread.fromJson(
              json['thread'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentObjectToJson(CommentObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('from_id', instance.fromId);
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  writeNotNull('text', instance.text);
  writeNotNull('donut', instance.donut?.toJson());
  writeNotNull('reply_to_user', instance.replyToUser);
  writeNotNull('reply_to_comment', instance.replyToComment);
  writeNotNull(
      'attachments', instance.attachments?.map((e) => e.toJson()).toList());
  writeNotNull('parents_stack', instance.parentsStack);
  writeNotNull('thread', instance.thread?.toJson());
  return val;
}

CommentObjectDonut _$CommentObjectDonutFromJson(Map<String, dynamic> json) =>
    CommentObjectDonut(
      isDon: json['is_don'] as bool?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$CommentObjectDonutToJson(CommentObjectDonut instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_don', instance.isDon);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

CommentObjectThread _$CommentObjectThreadFromJson(Map<String, dynamic> json) =>
    CommentObjectThread(
      count: json['count'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CommentObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      canPost: json['can_post'] as bool?,
      showReplyButton: json['show_reply_button'] as bool?,
      groupsCanPost: json['groups_can_post'] as bool?,
    );

Map<String, dynamic> _$CommentObjectThreadToJson(CommentObjectThread instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('can_post', instance.canPost);
  writeNotNull('show_reply_button', instance.showReplyButton);
  writeNotNull('groups_can_post', instance.groupsCanPost);
  return val;
}

PlaceObject _$PlaceObjectFromJson(Map<String, dynamic> json) => PlaceObject(
      id: json['id'] as int?,
      title: json['title'] as String?,
      latitude: json['latitude'] as int?,
      longitude: json['longitude'] as int?,
      created: const DateTimeNullConverter().fromJson(json['created'] as int?),
      icon: json['icon'] as String?,
      checkins: json['checkins'] as int?,
      updated: const DateTimeNullConverter().fromJson(json['updated'] as int?),
      type: json['type'] as int?,
      country: json['country'] as int?,
      city: json['city'] as int?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$PlaceObjectToJson(PlaceObject instance) {
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
  writeNotNull(
      'created', const DateTimeNullConverter().toJson(instance.created));
  writeNotNull('icon', instance.icon);
  writeNotNull('checkins', instance.checkins);
  writeNotNull(
      'updated', const DateTimeNullConverter().toJson(instance.updated));
  writeNotNull('type', instance.type);
  writeNotNull('country', instance.country);
  writeNotNull('city', instance.city);
  writeNotNull('address', instance.address);
  return val;
}
