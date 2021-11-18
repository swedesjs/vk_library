import "dart:mirrors" show reflectClass;
import "package:test/test.dart" show test, expect, equals;
import "package:vk_library/vk_library.dart" show ClientSpecification;
import "decode.dart";

void main() {
  final reflect = reflectClass(ClientSpecification);
  test("Basic Test", () {
    const params = {"name": "Test", "day_limit": 4, "all_limit": 6};
    
    expect(decode(reflect, params), equals(params));
  });
}
