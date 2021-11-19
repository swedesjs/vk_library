part of "../vk_library_enums.dart";

extension EnumExtension on Enum {
  String get value => toString().split(".").last.toLowerCase();
}
