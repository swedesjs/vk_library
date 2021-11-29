part of vk_library_enums;

/// Request type.
enum TypeAppsSendRequest {
  /// If a request is sent to a user who has not installed the application.
  INVITE,

  /// If the user has already installed the application.
  REQUEST,
}
