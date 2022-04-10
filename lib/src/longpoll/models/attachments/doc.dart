part of 'attachment.dart';

@JsonSerializable()
class DocAttachment extends Attachment {
  /// File ID.
  final int id;

  /// The ID of the user who uploaded the file.
  final int ownerId;

  /// Content access key.
  final String? accessKey;

  /// File name.
  final String? title;

  /// File size in bytes.
  final int? size;

  /// File extension.
  final String? ext;

  /// The address of the file where it can be downloaded.
  final String? url;

  /// Date added.
  @JsonKey(fromJson: dateNullFromJson)
  final DateTime? date;

  /// File type.
  @JsonKey(name: 'type')
  final DocAttachmentType? docType;

  /// File preview information.
  final DocAttachmentPreview? preview;

  DocAttachment({
    required this.id,
    required this.ownerId,
    this.accessKey,
    this.title,
    this.size,
    this.ext,
    this.url,
    this.date,
    this.docType,
    this.preview,
  }) : super(type: AttachmentType.doc);

  factory DocAttachment.fromJson(Map<String, dynamic> json) =>
      _$DocAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocAttachmentToJson(this);
}

enum DocAttachmentType {
  @JsonValue(1)
  textDocuments,
  @JsonValue(2)
  archives,
  @JsonValue(3)
  gif,
  @JsonValue(4)
  images,
  @JsonValue(5)
  audio,
  @JsonValue(6)
  video,
  @JsonValue(7)
  eBooks,
  @JsonValue(8)
  unknown
}

@JsonSerializable()
class DocAttachmentPreview {
  /// Images for preview.
  final DocAttachmentPreviewPhoto? photo;

  /// Graffiti information.
  final DocAttachmentPreviewGraffiti? graffiti;

  /// Audio message data.
  final DocAttachmentPreviewAudioMessage? audioMessage;

  DocAttachmentPreview({this.photo, this.graffiti, this.audioMessage});

  factory DocAttachmentPreview.fromJson(Map<String, dynamic> json) =>
      _$DocAttachmentPreviewFromJson(json);

  Map<String, dynamic> toJson() => _$DocAttachmentPreviewToJson(this);
}

@JsonSerializable()
class DocAttachmentPreviewPhoto {
  /// An array of copies of the image in different sizes.
  final List<PhotoSize>? sizes;

  DocAttachmentPreviewPhoto({this.sizes});

  factory DocAttachmentPreviewPhoto.fromJson(Map<String, dynamic> json) =>
      _$DocAttachmentPreviewPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$DocAttachmentPreviewPhotoToJson(this);
}

@JsonSerializable()
class DocAttachmentPreviewGraffiti {
  /// Graffiti file url.
  final String? src;

  /// Image width in px.
  final int? width;

  /// Image height in px.
  final int? height;

  DocAttachmentPreviewGraffiti({this.src, this.width, this.height});

  factory DocAttachmentPreviewGraffiti.fromJson(Map<String, dynamic> json) =>
      _$DocAttachmentPreviewGraffitiFromJson(json);

  Map<String, dynamic> toJson() => _$DocAttachmentPreviewGraffitiToJson(this);
}

@JsonSerializable()
class DocAttachmentPreviewAudioMessage {
  /// Audio message duration.
  @JsonKey(fromJson: durationNullFromJson, toJson: durationNullToJson)
  final Duration? duration;

  /// array of values for visual display of sound
  final List<int>? waveform;

  /// URL of the .ogg file.
  final String? linkOgg;

  /// URL of the .mp3 file.
  final String? linkMp3;

  DocAttachmentPreviewAudioMessage({
    this.duration,
    this.waveform,
    this.linkOgg,
    this.linkMp3,
  });

  factory DocAttachmentPreviewAudioMessage.fromJson(
          Map<String, dynamic> json) =>
      _$DocAttachmentPreviewAudioMessageFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DocAttachmentPreviewAudioMessageToJson(this);
}
