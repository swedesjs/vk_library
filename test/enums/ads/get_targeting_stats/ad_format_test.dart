import "package:test/test.dart" show test, expect, equals;
import "package:vk_library/vk_library_enums/vk_library_enums.dart"
    show adFormatGetTargetingStatsMap, AdFormatGetTargetingStats;

void main() {
  test(
    "The order of the values ​​of the keys in the list is the same as the value in the enum.",
    () {
      expect(
        adFormatGetTargetingStatsMap.keys,
        equals(AdFormatGetTargetingStats.values),
      );
    },
  );

  test("The order of the values ​​in the list is the same as required", () {
    expect(
      adFormatGetTargetingStatsMap.values,
      equals(const [1, 2, 3, 4, 7, 8, 9, 10, 11]),
    );
  });
}
