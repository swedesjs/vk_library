part of '../models.dart';

/// Languages
enum Language {
  /// Russian
  ru,

  /// Ukrainian
  uk,

  /// Belorussian
  be,

  /// English
  en,

  /// Spanish
  es,

  /// Finnish
  fi,

  /// Deutsch
  de,

  /// Italian
  it
}

@JsonSerializable(createFactory: false)
class VKOptions {
  /// Token
  @JsonKey(name: 'access_token')
  final String token;

  /// The parameter specifies the language in which various data will be returned, such as country and city names.
  @JsonKey(name: 'lang')
  final Language language;

  /// Version api.
  @JsonKey(name: 'v')
  final String version;

  const VKOptions({
    required this.token,
    this.language = Language.ru,
    this.version = '5.131',
  });

  Map<String, dynamic> toJson() => _$VKOptionsToJson(this);
}
