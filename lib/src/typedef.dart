part of vk_library;

typedef Json = Map<String, dynamic>;

typedef CallMethodType = Future<Call> Function(String subMethodName, Json data);
