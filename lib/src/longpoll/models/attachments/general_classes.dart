part of 'attachment.dart';

@JsonSerializable()
class GeneralClassAttachmentImage {
  /// Copy URL.
  final String? url;

  /// Copy width in px.
  final int? width;

  /// Copy height in px.
  final int? height;

  GeneralClassAttachmentImage({this.url, this.width, this.height});

  factory GeneralClassAttachmentImage.fromJson(Map<String, dynamic> json) =>
      _$GeneralClassAttachmentImageFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralClassAttachmentImageToJson(this);
}
