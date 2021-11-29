import "package:test/test.dart";
import "package:vk_library/vk_library_enums/vk_library_enums.dart";

void main() {
  test("Basic Test", () {
    expect(MapOrderBoardGetTopics.keys, equals(OrderBoardGetTopics.values));
    expect(MapOrderBoardGetTopics.values, equals(const [1, 2, -1, -2]));
  });
}
