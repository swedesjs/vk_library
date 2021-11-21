import "dart:mirrors" show reflectClass;

import "package:test/test.dart" show test, expect, equals;
import "package:vk_library/vk_library_enums/vk_library_enums.dart"
    show Sex, MaritalStatus;
import "package:vk_library/vk_library_options/vk_library_options.dart"
    show CriteriaAdsGetTargetingStats;

import "../decode.dart";

void main() {
  final reflect = reflectClass(CriteriaAdsGetTargetingStats);
  test("Basic Test", () {
    const params = {
      "sex": Sex.MALE,
      "age_from": 3,
      "age_to": 5,
      "birthday": 5,
      "country": 4,
      "cities": [3, 5],
      "cities_not": [3, 5],
      "statuses": [MaritalStatus.LOVE, MaritalStatus.ENGAGED]
    };

    expect(
      decode(reflect, params),
      equals({
        ...params,
        "sex": 2,
        "cities": (params["cities"] as List).join(","),
        "cities_not": (params["cities_not"] as List).join(","),
        "statuses": (params["statuses"] as List)
            .cast<MaritalStatus>()
            .map((e) => e.index)
            .join(","),
      }),
    );
  });
}
