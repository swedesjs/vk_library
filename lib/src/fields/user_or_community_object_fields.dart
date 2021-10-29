part of vk_library;

/// An abstract class serving as a union of classes such as [UserObjectFields] and [CommunityObjectFields].
/// 
/// For *example*:
/// ```dart
/// vk.api.messages.getHistoryAttachments(peerId: 2000000001, fields: const [
///   UserObjectFields.ACTIVITIES,
///   CommunityObjectFields.ADDRESSES
/// ]);
/// ```
abstract class UserOrCommunityObjectFields extends Fields {
  const UserOrCommunityObjectFields._(String fields) : super._(fields);
}
