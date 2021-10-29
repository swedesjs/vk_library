part of vk_library;
/// The class is inherited for all enumerations of the optional fields of VK objects.
class Fields {
  final String _fields;
  const Fields._(this._fields);

  @override
  String toString() => _fields;
}
