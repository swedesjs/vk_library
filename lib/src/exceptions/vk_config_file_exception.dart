part of vk_library;

/// The class is designed to throw exceptions in the factory constructor [VK.configFile].
class VKConfigFileException implements Exception {
  /// Message.
  final String message;
  const VKConfigFileException(this.message);

  @override
  String toString() => "VKConfigFileException: $message";
}
