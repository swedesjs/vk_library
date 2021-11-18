import "dart:mirrors" show reflectClass;

import "package:test/test.dart" show test, expect, equals;
import "package:vk_library/vk_library.dart" show AdSpecification;

import "decode.dart";

void main() {
  final reflect = reflectClass(AdSpecification);
  test("Basic Test", () {
    const params = {
      "campaign_id": 123456,
      "ad_format": 1,
      "cost_type": 0,
      "cpc": 2.00,
      "category1_id": 1,
      "title": "Test Title",
      "link_url": "https://mysite.com",
      "name": "My ad"
    };

    expect(
      decode(reflect, params),
      equals(params),
    );
  });
}
