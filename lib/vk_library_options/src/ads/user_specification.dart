part of vk_library_options;

/// The class describes the administrators to add.
class UserSpecification {
  /// The id of the user to be added as `administrator` / `observer`.
  final int userId;

  /// Flag describing the type of authority.
  final RoleUserSpecification role;

  /// Client id.
  final int clientId;

  /// Whether to show the budget to the user.
  final bool? viewBudget;

  const UserSpecification({
    required this.userId,
    required this.role,
    required this.clientId,
    this.viewBudget,
  });

  @override
  String toString() {
    return jsonEncode({
      "user_id": userId,
      "role": role.value,
      "client_id": clientId,
      if (viewBudget != null) "view_budget": viewBudget
    });
  }
}

/// Authority type.
enum RoleUserSpecification {
  /// Observer.
  REPORTS,

  /// Administrator.
  MANAGER,
}
