part of 'attachment.dart';

@JsonSerializable()
class ExternalAttachment extends AbstractAttachment {
  ExternalAttachment({required super.type});

  factory ExternalAttachment.fromJson(Map<String, dynamic> json) =>
      _$ExternalAttachmentFromJson(json);

  @override
  bool get canBeAttach => false;

  @override
  Map<String, dynamic> toJson() => _$ExternalAttachmentToJson(this);
}