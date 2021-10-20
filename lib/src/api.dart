part of vk_library;

final baseUrl = Uri(scheme: "https", host: "api.vk.com");

final _dio = Dio(BaseOptions(validateStatus: (status) => true));

class API {
  final String _token;
  final String _version;
  final Language _language;

  late Messages messages;

  API(this._token, this._version, this._language) {
    messages = Messages(this);
  }

  Future<Call> call(
    String methodName,
    Json data,
  ) async {
    final response = await _dio.post<Json>(
      baseUrl.replace(path: "method/$methodName/").toString(),
      queryParameters: {
        "access_token": _token,
        "v": _version,
        "language": _language.toString(),
        ...data,
      },
    );

    final responseData = response.data!;

    if (responseData["error"] != null) {
      final error = responseData["error"];

      throw APIException(
        code: error["error_code"],
        message: error["error_msg"],
        request_params: (error["request_params"] as List).cast<Json>(),
      );
    }

    return Call(responseData);
  }

  CallMethodType callMethod(String methodName) =>
      (String subMethodName, Json data) => call("$methodName.$subMethodName", data);
}
