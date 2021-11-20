part of vk_library_options;

class TargetPixelRulesAds {
  final TypeTargetPixelRulesAds? type;

  /// The URL of the page, including protocol and domain.
  final String? urlFullMatch;

  /// An array of strings to search for an occurrence. A match is counted if all specified substrings appear in the URL.
  final List<String>? urlSubstringsMatch;

  /// Regular expression.
  final String? urlRegexMatch;

  /// The name of the event.
  final String? eventFullMatch;

  /// An array of strings to search for an occurrence. A match is counted if all substrings are included in the event name.
  final List<String>? eventSubstringsMatch;

  /// Regular expression.
  final String? eventRegexMatch;

  const TargetPixelRulesAds({
    this.type,
    this.urlFullMatch,
    this.urlSubstringsMatch,
    this.urlRegexMatch,
    this.eventFullMatch,
    this.eventSubstringsMatch,
    this.eventRegexMatch,
  });

  @override
  String toString() {
    return jsonEncode({
      if (type != null) "type": type!.value,
      if (urlFullMatch != null) "url_full_match": urlFullMatch,
      if (urlSubstringsMatch != null)
        "url_substrings_match": urlSubstringsMatch,
      if (urlRegexMatch != null) "url_regex_match": urlRegexMatch,
      if (eventFullMatch != null) "event_full_match": eventFullMatch,
      if (eventSubstringsMatch != null)
        "event_substrings_match": eventSubstringsMatch,
      if (eventRegexMatch != null) "event_regex_match": eventRegexMatch,
    });
  }
}

enum TypeTargetPixelRulesAds { ARGS }
