import "dart:mirrors" show reflectClass;

import "package:test/test.dart" show equals, expect, test;
import "package:vk_library/vk_library.dart"
    show TargetPixelRulesAds, TypeTargetPixelRulesAds;

import "../decode.dart";

void main() {
  final reflect = reflectClass(TargetPixelRulesAds);
  test("Basic Test", () {
    const params = {
      "type": TypeTargetPixelRulesAds.ARGS,
      "url_full_match": "https://example.com/catalog/shoes?item=836451",
      "url_substrings_match": ["catalog", "men", "shoes"],
      "url_regex_match": r"catalog/(men|women)/shoes?item=\d+",
      "event_full_match": "click-red-button",
      "event_substrings_match": ["click", "red", "button"],
      "event_regex_match": r"^click-(red|green)-\d+$"
    };

    expect(decode(reflect, params), equals({...params, "type": "args"}));
  });
}
