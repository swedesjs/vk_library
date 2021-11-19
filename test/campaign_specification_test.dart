import "dart:mirrors" show reflectClass;

import "package:test/test.dart" show test, expect, equals;
import "package:vk_library/vk_library_options/vk_library_options.dart"
    show CampaignSpecification, TypeCampaignSpecification;

import "decode.dart";

void main() {
  final reflect = reflectClass(CampaignSpecification);

  test("Basic Test", () {
    const params = {"client_id": 3};

    expect(decode(reflect, params), equals(params));

    const params2 = {
      ...params,
      "type": TypeCampaignSpecification.NORMAL,
      "name": "Test",
    };

    expect(decode(reflect, params2), equals({...params2, "type": "normal"}));
  });
}
