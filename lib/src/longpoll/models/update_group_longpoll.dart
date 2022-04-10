part of '../models.dart';

@JsonSerializable()
class UpdateGroupLongpoll {
  final String type;
  final Map<String, dynamic> object;
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
