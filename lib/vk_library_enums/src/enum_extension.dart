part of vk_library_enums;

extension EnumExtension on Enum {
  String get value => toString().split(".").last.toLowerCase();
}
