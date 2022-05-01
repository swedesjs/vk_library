// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIException _$APIExceptionFromJson(Map<String, dynamic> json) => APIException(
      code: json['error_code'] as int,
      message: json['error_msg'] as String,
      requestParams: (json['request_params'] as List<dynamic>)
          .map((e) => RequestParam.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$APIExceptionToJson(APIException instance) =>
    <String, dynamic>{
      'error_code': instance.code,
      'error_msg': instance.message,
      'request_params': instance.requestParams.map((e) => e.toJson()).toList(),
    };

RequestParam _$RequestParamFromJson(Map<String, dynamic> json) => RequestParam(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$RequestParamToJson(RequestParam instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

Keyboard _$KeyboardFromJson(Map<String, dynamic> json) => Keyboard(
      isOneTime: json['one_time'] as bool? ?? false,
      buttons: (json['buttons'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map(
                      (e) => KeyboardButton.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [],
      isInline: json['inline'] as bool? ?? false,
    );

Map<String, dynamic> _$KeyboardToJson(Keyboard instance) => <String, dynamic>{
      'one_time': instance.isOneTime,
      'buttons': instance.buttons
          .map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'inline': instance.isInline,
    };

KeyboardButton _$KeyboardButtonFromJson(Map<String, dynamic> json) =>
    KeyboardButton(
      action: AbstractKeyboardAction.fromJson(
          json['action'] as Map<String, dynamic>),
      color: $enumDecodeNullable(_$KeyboardColorEnumMap, json['color']) ??
          KeyboardColor.secondary,
    );

Map<String, dynamic> _$KeyboardButtonToJson(KeyboardButton instance) =>
    <String, dynamic>{
      'action': instance.action.toJson(),
      'color': _$KeyboardColorEnumMap[instance.color],
    };

const _$KeyboardColorEnumMap = {
  KeyboardColor.primary: 'primary',
  KeyboardColor.secondary: 'secondary',
  KeyboardColor.negative: 'negative',
  KeyboardColor.positive: 'positive',
};

Map<String, dynamic> _$AbstractKeyboardActionToJson(
    AbstractKeyboardAction instance) {
  final val = <String, dynamic>{
    'type': _$KeyboardActionTypeEnumMap[instance.type],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  return val;
}

const _$KeyboardActionTypeEnumMap = {
  KeyboardActionType.text: 'text',
  KeyboardActionType.openLink: 'open_link',
  KeyboardActionType.location: 'location',
  KeyboardActionType.vkPay: 'vkpay',
  KeyboardActionType.vkApps: 'open_app',
  KeyboardActionType.callback: 'callback',
};

KeyboardText _$KeyboardTextFromJson(Map<String, dynamic> json) => KeyboardText(
      text: json['label'] as String,
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$KeyboardTextToJson(KeyboardText instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  val['label'] = instance.text;
  return val;
}

KeyboardOpenLink _$KeyboardOpenLinkFromJson(Map<String, dynamic> json) =>
    KeyboardOpenLink(
      link: json['link'] as String,
      text: json['label'] as String,
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$KeyboardOpenLinkToJson(KeyboardOpenLink instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  val['link'] = instance.link;
  val['label'] = instance.text;
  return val;
}

KeyboardLocation _$KeyboardLocationFromJson(Map<String, dynamic> json) =>
    KeyboardLocation(
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$KeyboardLocationToJson(KeyboardLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  return val;
}

KeyboardVKPay _$KeyboardVKPayFromJson(Map<String, dynamic> json) =>
    KeyboardVKPay(
      hash: json['hash'] as String?,
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$KeyboardVKPayToJson(KeyboardVKPay instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  writeNotNull('hash', instance.hash);
  return val;
}

KeyboardVKApps _$KeyboardVKAppsFromJson(Map<String, dynamic> json) =>
    KeyboardVKApps(
      appId: json['app_id'] as int?,
      ownerId: json['owner_id'] as int?,
      name: json['label'] as String?,
      hash: json['hash'] as String?,
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$KeyboardVKAppsToJson(KeyboardVKApps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  writeNotNull('app_id', instance.appId);
  writeNotNull('owner_id', instance.ownerId);
  writeNotNull('label', instance.name);
  writeNotNull('hash', instance.hash);
  return val;
}

KeyboardCallback _$KeyboardCallbackFromJson(Map<String, dynamic> json) =>
    KeyboardCallback(
      text: json['label'] as String?,
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$KeyboardCallbackToJson(KeyboardCallback instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  writeNotNull('label', instance.text);
  return val;
}

Map<String, dynamic> _$TemplateToJson(Template instance) => <String, dynamic>{
      'elements': instance.elements.map((e) => e.toJson()).toList(),
    };

Map<String, dynamic> _$TemplateElementToJson(TemplateElement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('photo_id', instance.photoId);
  val['action'] = instance.action.toJson();
  val['buttons'] = instance.buttons.map((e) => e.toJson()).toList();
  return val;
}

Map<String, dynamic> _$AbstractTemplateActionToJson(
        AbstractTemplateAction instance) =>
    <String, dynamic>{
      'type': _$TemplateActionTypeEnumMap[instance.type],
    };

const _$TemplateActionTypeEnumMap = {
  TemplateActionType.openLink: 'open_link',
  TemplateActionType.openPhoto: 'open_photo',
};

Map<String, dynamic> _$TemplateOpenLinkToJson(TemplateOpenLink instance) =>
    <String, dynamic>{
      'type': _$TemplateActionTypeEnumMap[instance.type],
      'link': instance.link,
    };

Map<String, dynamic> _$TemplateOpenPhotoToJson(TemplateOpenPhoto instance) =>
    <String, dynamic>{
      'type': _$TemplateActionTypeEnumMap[instance.type],
    };

Map<String, dynamic> _$VKOptionsToJson(VKOptions instance) => <String, dynamic>{
      'access_token': instance.token,
      'lang': _$LanguageEnumMap[instance.language],
      'v': instance.version,
    };

const _$LanguageEnumMap = {
  Language.ru: 'ru',
  Language.uk: 'uk',
  Language.be: 'be',
  Language.en: 'en',
  Language.es: 'es',
  Language.fi: 'fi',
  Language.de: 'de',
  Language.it: 'it',
};
