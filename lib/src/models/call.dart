part of vk_library;

class Call {
  final Map<String, dynamic> _responses;

  const Call(this._responses);

  dynamic get response => _responses["response"];
  Map<String, dynamic> get object => _responses;

  dynamic operator [](String other) => _responses[other];

  @override
  String toString() => "Call";
}
