import "package:test/test.dart";
import "package:vk_library/vk_library_enums/vk_library_enums.dart";

void main() {
  test("Basic Test", () {
    expect(
      MapImageTypeAppWidgets.keys,
      equals(ImageTypeAppWidgets.values),
    );

    expect(
      MapImageTypeAppWidgets.values,
      equals(const ["24x24", "50x50", "160x160", "160x240", "510x128"]),
    );
  });
}
