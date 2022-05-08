part of 'attachment.dart';

/// Object describing graffiti.
///
/// https://dev.vk.com/reference/objects/graffiti
@JsonSerializable()
class GraffitiAttachment extends AttachmentDefault {
  /// The graffiti address where it can be downloaded.
  final String? url;

  /// Image width in px.
  final int? width;

  /// Image height in px.
  final int? height;

  GraffitiAttachment({
    required int id,
    required int ownerId,
    String? accessKey,
    this.url,
    this.width,
    this.height,
  }) : super(
          type: AttachmentType.graffiti,
          id: id,
          ownerId: ownerId,
          accessKey: accessKey,
        );

  factory GraffitiAttachment.fromJson(Map<String, dynamic> json) =>
      _$GraffitiAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GraffitiAttachmentToJson(this);
}
