part of 'attachment.dart';

@JsonSerializable()
class LinkAttachment extends Attachment {
  /// Link URL.
  final String? url;

  /// Link title.
  final String? title;

  /// Link signature (if any).
  final String? caption;

  /// Description of the link.
  final String? description;

  /// Image preview.
  final PhotoAttachment? photo;

  /// Product information (if available).
  final Map<String, dynamic>? product;

  /// Information about the button to navigate to (if any).
  final Map<String, dynamic>? button;

  /// The ID of the content wiki page to preview the content of the page. Returned in the format "owner_id_page_id"
  final String? previewPage;

  /// URL of the content page to preview the content of the page.
  final String? previewUrl;

  LinkAttachment({
    this.url,
    this.title,
    this.caption,
    this.description,
    this.photo,
    this.product,
    this.button,
    this.previewPage,
    this.previewUrl,
  }) : super(type: AttachmentType.link);

  factory LinkAttachment.fromJson(Map<String, dynamic> json) =>
      _$LinkAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LinkAttachmentToJson(this);
}
