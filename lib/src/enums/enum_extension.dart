part of vk_library;

extension _EnumExtension on Enum {
  String get value => toString().split(".").last.toLowerCase();
}
