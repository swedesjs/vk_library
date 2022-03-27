part of '../models.dart';

enum Language { ru, uk, be, en, es, fi, de, it }

@JsonSerializable(createFactory: false)
class VKOptions {
  @JsonKey(name: 'access_token')
  final String token;

  @JsonKey(name: 'lang')
  final Language language;

  @JsonKey(name: 'v')
  final String version;

  const VKOptions({
    required this.token,
    this.language = Language.ru,
    this.version = '5.131',
  });

  Map<String, dynamic> toJson() => _$VKOptionsToJson(this);
}
