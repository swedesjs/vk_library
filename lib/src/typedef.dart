part of vk_library;

/// The default type, which serves as the type of response from VK and not only
typedef Json = Map<String, dynamic>;

/// The response type of the callMethod method in the [API] class
typedef _CallMethodType = Future<Call> Function(String subMethodName, Json data);
