part of vk_library;

/// The interface describing the [audio recording](https://vk.com/dev/objects/audio).
class AudioObject {
  /// The object that is used for the interface
  final Json object;
  const AudioObject(this.object);

  /// The identifier of the audio recording.
  int get id => object["id"];

  /// The identifier of the owner of the audio recording.
  int get ownerId => object["owner_id"];

  /// Executor.
  String get artist => object["artist"];

  /// The name of the song.
  String get title => object["title"];

  /// Duration of the audio recording in seconds.
  int get duration => object["duration"];

  /// Link to mp3.
  String get url => object["url"];

  /// Audio recording text identifier (if available).
  int? get lyricsId => object["lyrics_id"];

  /// The ID of the album that contains the audio recording (if assigned).
  int? get albumId => object["album_id"];

  /// Genre identifier from [audio genre list](https://vk.com/dev/objects/audio_genres).
  int get genreId => object["genre_id"];

  /// Date added.
  int get date => object["date"];

  /// `true`, if the `Do not display on search` option is enabled.
  bool get noSearch => object["no_search"] != null;

  /// `true` if the audio is in high quality.
  bool get isHq => object["is_hq"] == 1;
}
