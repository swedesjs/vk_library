part of 'attachment.dart';

@JsonSerializable()
class ExternalAttachment extends AbstractAttachment {
  ExternalAttachment({required AttachmentType type}) : super(type: type);

  factory ExternalAttachment.fromJson(Map<String, dynamic> json) =>
      _$ExternalAttachmentFromJson(json);

  @override
  bool get canBeAttach => false;

  @override
  Map<String, dynamic> toJson() => _$ExternalAttachmentToJson(this);
}