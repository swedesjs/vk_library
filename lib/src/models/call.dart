part of vk_library;

class Call {
  final Json _responses;

  const Call(this._responses);

  dynamic get response => _responses["response"];
  Json get object => _responses;

  dynamic operator [](String other) => _responses[other];

  @override
  String toString() => "Call";
}
