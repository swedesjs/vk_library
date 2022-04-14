part of '../models.dart';

/// The object describes the error that came as a result of an unsuccessful request to the api.
@JsonSerializable()
class APIException implements Exception {
  /// Error code
  @JsonKey(name: 'error_code')
  final int code;

  /// Message
  @JsonKey(name: 'error_msg')
  final String message;

  /// Parameters that were specified during the request
  final List<RequestParam> requestParams;

  APIException({
    required this.code,
    required this.message,
    required this.requestParams,
  });

  factory APIException.fromJson(Map<String, dynamic> json) =>
      _$APIExceptionFromJson(json);

  Map<String, dynamic> toJson() => _$APIExceptionToJson(this);

  @override
  String toString() => 'APIException[$code]: $message';
}

/// An object that describes the request parameters as a result of a request to the VK API, when an error occurs [APIException]
@JsonSerializable()
class RequestParam {
  /// Request param key
  final String key;

  /// Request param value
  final String value;

  RequestParam({required this.key, required this.value});

  factory RequestParam.fromJson(Map<String, dynamic> json) =>
      _$RequestParamFromJson(json);

  Map<String, dynamic> toJson() => _$RequestParamToJson(this);

  @override
  String toString() => 'RequestParam(key: $key, value: $value)';
}
