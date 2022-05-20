import 'dart:convert';

import 'package:dio/dio.dart';

final _snake = RegExp(r'_([a-zA-z])');

extension CaseHelper on String {
  String get camel =>
      replaceAllMapped(_snake, (match) => match[1]!.toUpperCase());
}

extension MapKeysHelper<K extends String, V> on Map<K, V> {
  /// Converts snake case keys to camel case.
  ///
  /// ```dart
  /// final person = <String, dynamic>{'first_name': 'Brandon', 'surname': 'Garcia'};
  ///
  /// print(person.keysSnakeToCamel());
  /// // {'firstName': 'Brandon', 'surname': 'Garcia'}
  /// ```
  Map<String, V> keysSnakeToCamel() =>
      map((key, value) => MapEntry(key.camel, value));
}

final _dio = Dio(BaseOptions(contentType: 'multipart/form-data'));

/// The function returns the necessary parameters from the map,
/// аit also returns the keys converted to [Symbol]
///
/// ```dart
/// final params = <String, dynamic>{'id': 5, 'ownerId': 10, 'text': 'test'};
///
/// print(whereParams(params, ['id', 'ownerId']);
/// // {'id': 5, 'ownerId': 10}
/// ```
Map<String, dynamic> whereParams(
  Map<String, dynamic> params,
  List<String> requiredParameters,
) {
  return Map.fromEntries(params.entries
      .where((element) => requiredParameters.contains(element.key)));
}

Future<Map<String, dynamic>> fileTransfer(String url, FormData formData) {
  return _dio
      .post<String>(url, data: formData)
      .then((response) => jsonDecode(response.data!) as Map<String, dynamic>);
}

Future<Map<String, MultipartFile>> formDataFiles(
  String field,
  List<String> files,
) async {
  return <String, MultipartFile>{
    for (int i = 0; i < files.length; i++)
      '$field${i + 1}': await MultipartFile.fromFile(files[i])
  };
}

extension FunctionHelper on Function {
  dynamic apply({
    List<dynamic> positionalArguments = const [],
    Map<Object, dynamic> namedArguments = const {},
  }) {
    final namedArgIsMapString = namedArguments is Map<String, dynamic>;

    if (!namedArgIsMapString && namedArguments is! Map<Symbol, dynamic>) {
      throw Exception('');
    }

    return Function.apply(
        this,
        positionalArguments,
        namedArgIsMapString
            ? namedArguments.map((key, value) => MapEntry(Symbol(key), value))
            : namedArguments as Map<Symbol, dynamic>);
  }
}
