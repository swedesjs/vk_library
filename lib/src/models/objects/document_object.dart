part of vk_library;

/// The interface describing the [document](https://vk.com/dev/objects/doc) vk.
class DocumentObject {
  /// The object that is used for the interface
  final Json object;
  const DocumentObject(this.object);

  /// Document ID.
  int get id => object["id"];

  /// The ID of the user who uploaded the document.
  int get ownerId => object["owner_id"];

  /// Document's name.
  String get title => object["title"];

  /// The size of the document in bytes.
  int get size => object["size"];

  /// Extension of the document.
  String get ext => object["ext"];

  /// The address of the document where it can be downloaded.
  String get url => object["url"];

  /// Date added in `Unixtime` format.
  int get date => object["date"];

  /// Document type.
  DocumentType get type {
    switch (object["type"]) {
      case 1:
        return DocumentType.TEXT_DOCUMENTS;
      case 2:
        return DocumentType.ARCHIVES;
      case 3:
        return DocumentType.GIF;
      case 4:
        return DocumentType.IMAGE;
      case 5:
        return DocumentType.AUDIO;
      case 6:
        return DocumentType.VIDEO;
      case 7:
        return DocumentType.ELECTRONIC_BOOKS;
      default:
        return DocumentType.UNKNOWN;
    }
  }

  /// Information for previewing the document.
  DocumentObjectPreview get preview => DocumentObjectPreview(object["preview"]);
}

/// Enum describing the types of documents VK.
enum DocumentType {
  /// Text documents.
  TEXT_DOCUMENTS,

  /// Archives.
  ARCHIVES,

  /// Gif.
  GIF,

  /// Image.
  IMAGE,

  /// Audio.
  AUDIO,

  /// Video.
  VIDEO,

  /// Electronic books.
  ELECTRONIC_BOOKS,

  /// Unknown.
  UNKNOWN
}

/// Interface for the [DocumentObject.preview] field
class DocumentObjectPreview {
  /// The object that is used for the interface
  final Json object;
  const DocumentObjectPreview(this.object);

  /// Preview images.
  DocumentObjectPreviewPhoto? get photo {
    final photo = object["photo"];
    if (photo != null) return DocumentObjectPreviewPhoto(photo);
  }

  /// Graffiti data.
  DocumentObjectPreviewGraffiti? get graffiti {
    final graffiti = object["graffiti"];
    if (graffiti != null) return DocumentObjectPreviewGraffiti(graffiti);
  }

  /// Audio message data.
  DocumentObjectPreviewAudioMessage? get audioMessage {
    final audioMessage = object["audio_message"];
    if (audioMessage != null) {
      return DocumentObjectPreviewAudioMessage(audioMessage);
    }
  }
}

/// Interface for the [DocumentObjectPreview.photo] field
class DocumentObjectPreviewPhoto {
  /// The object that is used for the interface
  final Json object;
  const DocumentObjectPreviewPhoto(this.object);

  /// An array of copies of the image in different sizes.
  // TODO: Implement an object with photo dimensions - https://vk.com/dev/objects/photo_sizes
  List<Json> get sizes => object["sizes"];
}

/// Interface for the [DocumentObjectPreview.graffiti] field
class DocumentObjectPreviewGraffiti {
  /// The object that is used for the interface
  final Json object;
  const DocumentObjectPreviewGraffiti(this.object);

  /// The URL of the graffiti document.
  String get src => object["src"];

  /// Image width in px.
  int get width => object["width"];

  /// The height of the image in px.
  int get height => object["height"];
}

/// Interface for the [DocumentObjectPreview.audioMessage] field
class DocumentObjectPreviewAudioMessage {
  /// The object that is used for the interface
  final Json object;
  const DocumentObjectPreviewAudioMessage(this.object);

  /// Duration of the audio message in seconds.
  int get duration => object["duration"];

  /// Array of values ​​[int] for visual display of sound.
  List<int> get waveform => object["waveform"];

  /// .Ogg file url
  String get linkOgg => object["link_ogg"];

  /// .Mp3 file URL.
  String get linkMp3 => object["link_mp3"];
}
