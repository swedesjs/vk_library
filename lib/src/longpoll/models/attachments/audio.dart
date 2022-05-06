part of 'attachment.dart';

/// An object describing an audio recording
///
/// https://dev.vk.com/reference/objects/audio
@JsonSerializable()
class AudioAttachment extends AttachmentDefault {
  /// Executor.
  final String? artist;

  /// The name of the composition.
  final String? title;

  /// Audio duration.
@DurationNullConverter()
  final Duration? duration;

  /// Link to mp3.
  final String? url;

  /// Audio text ID (if available).
  final int? lyricsId;

  /// The ID of the album in which the audio recording is located (if assigned).
  final int? albumId;

  /// Genre ID from [list of audio genres](https://dev.vk.com/reference/objects/audio-genres).
  final int? genreId;

  /// Date added.
  @DateTimeNullConverter()
  final DateTime? date;

  /// Whether the option "Do not display when searching" is enabled.
  @JsonKey(fromJson: fieldReturnedInCase)
  final bool noSearch;

  /// 1 if the audio is in high quality.
  final int? isHq;

  AudioAttachment({
    required int id,
    required int ownerId,
    String? accessKey,
    this.artist,
    this.title,
    this.duration,
    this.url,
    this.lyricsId,
    this.albumId,
    this.genreId,
    this.date,
    required this.noSearch,
    this.isHq,
  }) : super(
          type: AttachmentType.audio,
          id: id,
          ownerId: ownerId,
          accessKey: accessKey,
        );

  factory AudioAttachment.fromJson(Map<String, dynamic> json) =>
      _$AudioAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioAttachmentToJson(this);
}
