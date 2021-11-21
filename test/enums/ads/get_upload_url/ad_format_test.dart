import "package:test/test.dart" show test, expect, equals;
import "package:vk_library/vk_library_enums/vk_library_enums.dart"
    show AdFormatAdsGetUploadURL, adFormatAdsGetUploadURLMap;

void main() {
  test(
    "The order of the values ​​of the keys in the list is the same as the value in the enum.",
    () {
      expect(
        adFormatAdsGetUploadURLMap.keys,
        equals(AdFormatAdsGetUploadURL.values),
      );
    },
  );

  test("The order of the values ​​in the list is the same as required", () {
    expect(
      adFormatAdsGetUploadURLMap.values,
      equals(const [1, 2, 3, 4, 5, 6, 11]),
    );
  });
}
