part of vk_library;

class ClientSpecification {
  /// Client name.
  final String? name;

  /// Daily limit in rubles.
  final int? dayLimit;

  /// Total limit in rubles.
  final int? allLimit;

  const ClientSpecification({this.name, this.dayLimit, this.allLimit});

  @override
  String toString() {
    return jsonEncode({
      if (name != null) "name": name,
      if (dayLimit != null) "day_limit": dayLimit,
      if (allLimit != null) "all_limit": allLimit,
    });
  }
}
