part of vk_library;

/// The interface for the call method found in the [API] class
class Call {
  /// Paramenter
  final Json _responses;

  const Call(this._responses);

  /// The response sent from the server
  dynamic get response => _responses["response"];

  /// Full response from the VK server
  Json get object => _responses;

  /// Referring to the full object sent from VK
  dynamic operator [](String other) => _responses[other];

  @override
  String toString() => "Call";
}
