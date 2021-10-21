part of vk_library;

/// A class for displaying exceptions in case of an error in working with api vk
/// 
class APIException implements Exception {
  /// Error description
  final String message;

  /// Error code
  final int code;

  /// Method parameters that were sent and an error occurred
  final List<Json> request_params;

  /// The class is used for exceptions in case of an error from VK
  ///
  ///
  /// In the [code] parameter, we indicate the error code that was given by VK
  ///
  /// The [message] parameter must contain a description of the error
  ///
  /// And in the [request_params] parameter we specify an array with keys and values ​​that was given by VK
  const APIException({
    required this.code,
    required this.message,
    this.request_params = const [],
  });

  @override
  String toString() => "APIException [$code] - $message";
}
