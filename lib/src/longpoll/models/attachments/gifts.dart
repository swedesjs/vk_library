part of 'attachment.dart';

@JsonSerializable()
class GiftAttachment extends Attachment {
  /// Gift ID.
  final int? id;

  /// Image URL 256x256px.
  final String? thumb_256;

  /// Image URL 96x96
  final String? thumb_96;

  /// Image URL 48x48
  final String? thumb_48;

  GiftAttachment({this.id, this.thumb_256, this.thumb_96, this.thumb_48})
      : super(type: AttachmentType.gift);

  factory GiftAttachment.fromJson(Map<String, dynamic> json) =>
      _$GiftAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GiftAttachmentToJson(this);
}
