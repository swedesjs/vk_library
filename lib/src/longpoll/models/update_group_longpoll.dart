part of '../models.dart';

/// An object describing a new [GroupLongpoll] event
@JsonSerializable()
class UpdateGroupLongpoll {
  /// Event type
  final String type;

  /// The object that fired the event
  final Map<String, dynamic> object;

  /// ID of the community in which the event occurred
  final int groupId;

  UpdateGroupLongpoll({
    required this.type,
    required this.object,
    required this.groupId,
  });

  factory UpdateGroupLongpoll.fromJson(Map<String, dynamic> json) =>
      _$UpdateGroupLongpollFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateGroupLongpollToJson(this);
}
