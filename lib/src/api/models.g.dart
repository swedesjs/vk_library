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
