part of 'attachment.dart';

/// An object describing a voice message.
///
/// https://dev.vk.com/reference/objects/audio-message
@JsonSerializable()
class AudioMessageAttachment extends Attachment {
  /// Audio message duration.
  @DurationNullConverter()
  final Duration? duration;

  /// An array of values for the visual display of the sound.
  final List<int>? waveform;

  /// URL of the .ogg file.
  final String? linkOgg;

  /// URL of the .mp3 file.
  final String? linkMp3;
  final String? locale;

  @JsonKey(fromJson: whetherNull)
  final bool? isRecognized;

  AudioMessageAttachment({
    required super.id,
    required super.ownerId,
    super.accessKey,
    this.duration,
    this.waveform,
    this.linkOgg,
    this.linkMp3,
    this.locale,
    this.isRecognized,
  }) : super(type: AttachmentType.audioMessage);

  factory AudioMessageAttachment.fromJson(Map<String, dynamic> json) =>
      _$AudioMessageAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioMessageAttachmentToJson(this);
}
