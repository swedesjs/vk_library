part of vk_library;

class APIException implements Exception {
  final String message;
  final int code;

  final List<Json> request_params;

  const APIException({
    required this.code,
    required this.message,
    this.request_params = const [],
  });

  @override
  String toString() => "APIException [$code] - $message";
}
