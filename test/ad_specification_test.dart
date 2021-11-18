import "dart:convert";
import "dart:mirrors";

import "package:test/test.dart";
import "package:vk_library/vk_library.dart" show AdSpecification;

Map<Symbol, dynamic> instance(Map<String, dynamic> params) {
  return params.map(
    (key, value) => MapEntry(
      Symbol(
        key.replaceAllMapped(
          RegExp(r"_([a-z])"),
          (match) => match[1]!.toUpperCase(),
        ),
      ),
      value,
    ),
  );
}

void main() {
  final reflect = reflectClass(AdSpecification);
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
  test("Basic Test", () {
    expect(
      jsonDecode(
        reflect
            .newInstance(const Symbol(""), const [], instance(params))
            .reflectee
            .toString(),
      ),
      equals(params),
    );
  });

  
}
