part of '../models.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class APIException implements Exception {
  @JsonKey(name: 'error_code')
  final int code;

  @JsonKey(name: 'error_msg')
  final String message;

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

@JsonSerializable()
class RequestParam {
  final String key, value;

  RequestParam({required this.key, required this.value});

  factory RequestParam.fromJson(Map<String, dynamic> json) =>
      _$RequestParamFromJson(json);

  Map<String, dynamic> toJson() => _$RequestParamToJson(this);

  @override
  String toString() => 'RequestParam(key: $key, value: $value)';
}
