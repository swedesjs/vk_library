// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AbstractAttachmentToJson(AbstractAttachment instance) =>
    <String, dynamic>{
      'type': _$AttachmentTypeEnumMap[instance.type],
    };

const _$AttachmentTypeEnumMap = {
  AttachmentType.photo: 'photo',
  AttachmentType.video: 'video',
  AttachmentType.audio: 'audio',
  AttachmentType.doc: 'doc',
  AttachmentType.link: 'link',
  AttachmentType.market: 'market',
  AttachmentType.marketAlbum: 'market_album',
  AttachmentType.wall: 'wall',
  AttachmentType.wallReply: 'wall_reply',
  AttachmentType.sticker: 'sticker',
  AttachmentType.gift: 'gift',
  AttachmentType.audioMessage: 'audio_message',
  AttachmentType.poll: 'poll',
  AttachmentType.graffiti: 'graffiti',
};

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
      type: $enumDecode(_$AttachmentTypeEnumMap, json['type']),
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
    );

Map<String, dynamic> _$AttachmentToJson(Attachment instance) {
  final val = <String, dynamic>{
    'type': _$AttachmentTypeEnumMap[instance.type],
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  return val;
}

ExternalAttachment _$ExternalAttachmentFromJson(Map<String, dynamic> json) =>
    ExternalAttachment(
      type: $enumDecode(_$AttachmentTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$ExternalAttachmentToJson(ExternalAttachment instance) =>
    <String, dynamic>{
      'type': _$AttachmentTypeEnumMap[instance.type],
    };

AudioAttachment _$AudioAttachmentFromJson(Map<String, dynamic> json) =>
    AudioAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      artist: json['artist'] as String?,
      title: json['title'] as String?,
      duration:
          const DurationNullConverter().fromJson(json['duration'] as int?),
      url: json['url'] as String?,
      lyricsId: json['lyrics_id'] as int?,
      albumId: json['album_id'] as int?,
      genreId: json['genre_id'] as int?,
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      noSearch: fieldReturnedInCase(json['no_search'] as int?),
      isHq: json['is_hq'] as int?,
      isExplicit: json['is_explicit'] as bool?,
      isFocusTrack: json['is_focus_track'] as bool?,
      trackCode: json['track_code'] as String?,
      mainArtists: (json['main_artists'] as List<dynamic>?)
          ?.map((e) =>
              AudioAttachmentMainArtists.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortVideosAllowed: json['short_videos_allowed'] as bool?,
      storiesAllowed: json['stories_allowed'] as bool?,
      storiesCoverAllowed: json['stories_cover_allowed'] as bool?,
    );

Map<String, dynamic> _$AudioAttachmentToJson(AudioAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('artist', instance.artist);
  writeNotNull('title', instance.title);
  writeNotNull(
      'duration', const DurationNullConverter().toJson(instance.duration));
  writeNotNull('url', instance.url);
  writeNotNull('lyrics_id', instance.lyricsId);
  writeNotNull('album_id', instance.albumId);
  writeNotNull('genre_id', instance.genreId);
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  val['no_search'] = instance.noSearch;
  writeNotNull('is_hq', instance.isHq);
  writeNotNull('is_explicit', instance.isExplicit);
  writeNotNull('is_focus_track', instance.isFocusTrack);
  writeNotNull('track_code', instance.trackCode);
  writeNotNull(
      'main_artists', instance.mainArtists?.map((e) => e.toJson()).toList());
  writeNotNull('short_videos_allowed', instance.shortVideosAllowed);
  writeNotNull('stories_allowed', instance.storiesAllowed);
  writeNotNull('stories_cover_allowed', instance.storiesCoverAllowed);
  return val;
}

AudioAttachmentMainArtists _$AudioAttachmentMainArtistsFromJson(
        Map<String, dynamic> json) =>
    AudioAttachmentMainArtists(
      name: json['name'] as String?,
      domain: json['domain'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$AudioAttachmentMainArtistsToJson(
    AudioAttachmentMainArtists instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('domain', instance.domain);
  writeNotNull('id', instance.id);
  return val;
}

AudioMessageAttachment _$AudioMessageAttachmentFromJson(
        Map<String, dynamic> json) =>
    AudioMessageAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      duration:
          const DurationNullConverter().fromJson(json['duration'] as int?),
      waveform:
          (json['waveform'] as List<dynamic>?)?.map((e) => e as int).toList(),
      linkOgg: json['link_ogg'] as String?,
      linkMp3: json['link_mp3'] as String?,
      locale: json['locale'] as String?,
      isRecognized: whetherNull(json['is_recognized'] as int?),
    );

Map<String, dynamic> _$AudioMessageAttachmentToJson(
    AudioMessageAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull(
      'duration', const DurationNullConverter().toJson(instance.duration));
  writeNotNull('waveform', instance.waveform);
  writeNotNull('link_ogg', instance.linkOgg);
  writeNotNull('link_mp3', instance.linkMp3);
  writeNotNull('locale', instance.locale);
  writeNotNull('is_recognized', instance.isRecognized);
  return val;
}

DocAttachment _$DocAttachmentFromJson(Map<String, dynamic> json) =>
    DocAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      title: json['title'] as String?,
      size: json['size'] as int?,
      ext: json['ext'] as String?,
      url: json['url'] as String?,
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      docType: $enumDecodeNullable(_$DocAttachmentTypeEnumMap, json['type']),
      preview: json['preview'] == null
          ? null
          : DocAttachmentPreview.fromJson(
              json['preview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocAttachmentToJson(DocAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('title', instance.title);
  writeNotNull('size', instance.size);
  writeNotNull('ext', instance.ext);
  writeNotNull('url', instance.url);
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  writeNotNull('type', _$DocAttachmentTypeEnumMap[instance.docType]);
  writeNotNull('preview', instance.preview?.toJson());
  return val;
}

const _$DocAttachmentTypeEnumMap = {
  DocAttachmentType.textDocuments: 1,
  DocAttachmentType.archives: 2,
  DocAttachmentType.gif: 3,
  DocAttachmentType.images: 4,
  DocAttachmentType.audio: 5,
  DocAttachmentType.video: 6,
  DocAttachmentType.eBooks: 7,
  DocAttachmentType.unknown: 8,
};

DocAttachmentPreview _$DocAttachmentPreviewFromJson(
        Map<String, dynamic> json) =>
    DocAttachmentPreview(
      photo: json['photo'] == null
          ? null
          : DocAttachmentPreviewPhoto.fromJson(
              json['photo'] as Map<String, dynamic>),
      graffiti: json['graffiti'] == null
          ? null
          : DocAttachmentPreviewGraffiti.fromJson(
              json['graffiti'] as Map<String, dynamic>),
      audioMessage: json['audio_message'] == null
          ? null
          : DocAttachmentPreviewAudioMessage.fromJson(
              json['audio_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocAttachmentPreviewToJson(
    DocAttachmentPreview instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('photo', instance.photo?.toJson());
  writeNotNull('graffiti', instance.graffiti?.toJson());
  writeNotNull('audio_message', instance.audioMessage?.toJson());
  return val;
}

DocAttachmentPreviewPhoto _$DocAttachmentPreviewPhotoFromJson(
        Map<String, dynamic> json) =>
    DocAttachmentPreviewPhoto(
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DocAttachmentPreviewPhotoToJson(
    DocAttachmentPreviewPhoto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sizes', instance.sizes?.map((e) => e.toJson()).toList());
  return val;
}

DocAttachmentPreviewGraffiti _$DocAttachmentPreviewGraffitiFromJson(
        Map<String, dynamic> json) =>
    DocAttachmentPreviewGraffiti(
      src: json['src'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$DocAttachmentPreviewGraffitiToJson(
    DocAttachmentPreviewGraffiti instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('src', instance.src);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

DocAttachmentPreviewAudioMessage _$DocAttachmentPreviewAudioMessageFromJson(
        Map<String, dynamic> json) =>
    DocAttachmentPreviewAudioMessage(
      duration:
          const DurationNullConverter().fromJson(json['duration'] as int?),
      waveform:
          (json['waveform'] as List<dynamic>?)?.map((e) => e as int).toList(),
      linkOgg: json['link_ogg'] as String?,
      linkMp3: json['link_mp3'] as String?,
    );

Map<String, dynamic> _$DocAttachmentPreviewAudioMessageToJson(
    DocAttachmentPreviewAudioMessage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'duration', const DurationNullConverter().toJson(instance.duration));
  writeNotNull('waveform', instance.waveform);
  writeNotNull('link_ogg', instance.linkOgg);
  writeNotNull('link_mp3', instance.linkMp3);
  return val;
}

GeneralClassAttachmentImage _$GeneralClassAttachmentImageFromJson(
        Map<String, dynamic> json) =>
    GeneralClassAttachmentImage(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$GeneralClassAttachmentImageToJson(
    GeneralClassAttachmentImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

GiftAttachment _$GiftAttachmentFromJson(Map<String, dynamic> json) =>
    GiftAttachment(
      id: json['id'] as int?,
      thumb_256: json['thumb_256'] as String?,
      thumb_96: json['thumb_96'] as String?,
      thumb_48: json['thumb_48'] as String?,
    );

Map<String, dynamic> _$GiftAttachmentToJson(GiftAttachment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('thumb_256', instance.thumb_256);
  writeNotNull('thumb_96', instance.thumb_96);
  writeNotNull('thumb_48', instance.thumb_48);
  return val;
}

GraffitiAttachment _$GraffitiAttachmentFromJson(Map<String, dynamic> json) =>
    GraffitiAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$GraffitiAttachmentToJson(GraffitiAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('url', instance.url);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

LinkAttachment _$LinkAttachmentFromJson(Map<String, dynamic> json) =>
    LinkAttachment(
      url: json['url'] as String?,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      description: json['description'] as String?,
      photo: json['photo'] == null
          ? null
          : PhotoAttachment.fromJson(json['photo'] as Map<String, dynamic>),
      product: json['product'] as Map<String, dynamic>?,
      button: json['button'] as Map<String, dynamic>?,
      previewPage: json['preview_page'] as String?,
      previewUrl: json['preview_url'] as String?,
      isFavorite: json['is_favorite'] as bool?,
    );

Map<String, dynamic> _$LinkAttachmentToJson(LinkAttachment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('title', instance.title);
  writeNotNull('caption', instance.caption);
  writeNotNull('description', instance.description);
  writeNotNull('photo', instance.photo?.toJson());
  writeNotNull('product', instance.product);
  writeNotNull('button', instance.button);
  writeNotNull('preview_page', instance.previewPage);
  writeNotNull('preview_url', instance.previewUrl);
  writeNotNull('is_favorite', instance.isFavorite);
  return val;
}

MarketAttachment _$MarketAttachmentFromJson(Map<String, dynamic> json) =>
    MarketAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] == null
          ? null
          : MarketAttachmentPrice.fromJson(
              json['price'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : MarketAttachmentDimensions.fromJson(
              json['dimensions'] as Map<String, dynamic>),
      weight: json['weight'] as int?,
      category: json['category'] == null
          ? null
          : MarketAttachmentCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      thumbPhoto: json['thumb_photo'] as String?,
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      availability: $enumDecodeNullable(
          _$MarketAttachmentAvailabilityEnumMap, json['availability']),
      isFavorite: json['is_favorite'] as bool? ?? false,
      sku: json['sku'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      canComment: whetherNull(json['can_comment'] as int?),
      canRepost: whetherNull(json['can_repost'] as int?),
      likes: json['likes'] as Map<String, dynamic>?,
      url: json['url'] as String?,
      buttonTitle: json['button_title'] as String?,
    );

Map<String, dynamic> _$MarketAttachmentToJson(MarketAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('dimensions', instance.dimensions?.toJson());
  writeNotNull('weight', instance.weight);
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('thumb_photo', instance.thumbPhoto);
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  writeNotNull('availability',
      _$MarketAttachmentAvailabilityEnumMap[instance.availability]);
  val['is_favorite'] = instance.isFavorite;
  writeNotNull('sku', instance.sku);
  writeNotNull('photos', instance.photos);
  writeNotNull('can_comment', instance.canComment);
  writeNotNull('can_repost', instance.canRepost);
  writeNotNull('likes', instance.likes);
  writeNotNull('url', instance.url);
  writeNotNull('button_title', instance.buttonTitle);
  return val;
}

const _$MarketAttachmentAvailabilityEnumMap = {
  MarketAttachmentAvailability.available: 0,
  MarketAttachmentAvailability.removed: 1,
  MarketAttachmentAvailability.notAvailable: 2,
};

MarketAttachmentPrice _$MarketAttachmentPriceFromJson(
        Map<String, dynamic> json) =>
    MarketAttachmentPrice(
      amount: json['amount'] as String?,
      currency: json['currency'] == null
          ? null
          : MarketAttachmentPriceCurrency.fromJson(
              json['currency'] as Map<String, dynamic>),
      oldAmount: json['old_amount'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$MarketAttachmentPriceToJson(
    MarketAttachmentPrice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency?.toJson());
  writeNotNull('old_amount', instance.oldAmount);
  writeNotNull('text', instance.text);
  return val;
}

MarketAttachmentPriceCurrency _$MarketAttachmentPriceCurrencyFromJson(
        Map<String, dynamic> json) =>
    MarketAttachmentPriceCurrency(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MarketAttachmentPriceCurrencyToJson(
    MarketAttachmentPriceCurrency instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

MarketAttachmentDimensions _$MarketAttachmentDimensionsFromJson(
        Map<String, dynamic> json) =>
    MarketAttachmentDimensions(
      width: json['width'] as int?,
      height: json['height'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$MarketAttachmentDimensionsToJson(
    MarketAttachmentDimensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('length', instance.length);
  return val;
}

MarketAttachmentCategory _$MarketAttachmentCategoryFromJson(
        Map<String, dynamic> json) =>
    MarketAttachmentCategory(
      id: json['id'] as int?,
      name: json['name'] as String?,
      section: json['section'] == null
          ? null
          : MarketAttachmentCategorySection.fromJson(
              json['section'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarketAttachmentCategoryToJson(
    MarketAttachmentCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('section', instance.section?.toJson());
  return val;
}

MarketAttachmentCategorySection _$MarketAttachmentCategorySectionFromJson(
        Map<String, dynamic> json) =>
    MarketAttachmentCategorySection(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MarketAttachmentCategorySectionToJson(
    MarketAttachmentCategorySection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

MarketAlbumAttachment _$MarketAlbumAttachmentFromJson(
        Map<String, dynamic> json) =>
    MarketAlbumAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      title: json['title'] as String?,
      isMain: json['is_main'] as bool?,
      isHidden: json['is_hidden'] as bool?,
      photo: json['photo'] as Map<String, dynamic>?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$MarketAlbumAttachmentToJson(
    MarketAlbumAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('title', instance.title);
  writeNotNull('is_main', instance.isMain);
  writeNotNull('is_hidden', instance.isHidden);
  writeNotNull('photo', instance.photo);
  writeNotNull('count', instance.count);
  return val;
}

PhotoAttachment _$PhotoAttachmentFromJson(Map<String, dynamic> json) =>
    PhotoAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      albumId: json['album_id'] as int?,
      userId: json['user_id'] as int?,
      description: json['text'] as String?,
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      width: json['width'] as int?,
      height: json['height'] as int?,
      hasTags: json['has_tags'] as bool?,
    );

Map<String, dynamic> _$PhotoAttachmentToJson(PhotoAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('album_id', instance.albumId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('text', instance.description);
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  writeNotNull('sizes', instance.sizes?.map((e) => e.toJson()).toList());
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('has_tags', instance.hasTags);
  return val;
}

PhotoSize _$PhotoSizeFromJson(Map<String, dynamic> json) => PhotoSize(
      type: $enumDecodeNullable(_$PhotoSizeTypeEnumMap, json['type']),
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$PhotoSizeToJson(PhotoSize instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('type', _$PhotoSizeTypeEnumMap[instance.type]);
  return val;
}

const _$PhotoSizeTypeEnumMap = {
  PhotoSizeType.s: 's',
  PhotoSizeType.m: 'm',
  PhotoSizeType.x: 'x',
  PhotoSizeType.o: 'o',
  PhotoSizeType.p: 'p',
  PhotoSizeType.q: 'q',
  PhotoSizeType.r: 'r',
  PhotoSizeType.y: 'y',
  PhotoSizeType.z: 'z',
  PhotoSizeType.w: 'w',
  PhotoSizeType.i: 'i',
  PhotoSizeType.d: 'd',
  PhotoSizeType.l: 'l',
  PhotoSizeType.k: 'k',
};

PollAttachment _$PollAttachmentFromJson(Map<String, dynamic> json) =>
    PollAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      created: const DateTimeNullConverter().fromJson(json['created'] as int?),
      question: json['question'] as String?,
      votes: json['votes'] as int?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map(
              (e) => PollAttachmentAnswers.fromJson(e as Map<String, dynamic>))
          .toList(),
      anonymous: json['anonymous'] as bool?,
      multiple: json['multiple'] as bool?,
      answerIds:
          (json['answer_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      endDate: const DateTimeNullConverter().fromJson(json['end_date'] as int?),
      closed: json['closed'] as bool?,
      isBoard: json['is_board'] as bool?,
      canEdit: json['can_edit'] as bool?,
      canVote: json['can_vote'] as bool?,
      canReport: json['can_report'] as bool?,
      canShare: json['can_share'] as bool?,
      authorId: json['author_id'] as int?,
      photo: json['photo'] == null
          ? null
          : PhotoAttachment.fromJson(json['photo'] as Map<String, dynamic>),
      background: json['background'] == null
          ? null
          : PollAttachmentBackground.fromJson(
              json['background'] as Map<String, dynamic>),
      friends:
          (json['friends'] as List<dynamic>?)?.map((e) => e as int).toList(),
      disableUnvote: json['disable_unvote'] as bool?,
      embedHash: json['embed_hash'] as String?,
    );

Map<String, dynamic> _$PollAttachmentToJson(PollAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'created', const DateTimeNullConverter().toJson(instance.created));
  writeNotNull('question', instance.question);
  writeNotNull('votes', instance.votes);
  writeNotNull('answers', instance.answers?.map((e) => e.toJson()).toList());
  writeNotNull('anonymous', instance.anonymous);
  writeNotNull('multiple', instance.multiple);
  writeNotNull('answer_ids', instance.answerIds);
  writeNotNull(
      'end_date', const DateTimeNullConverter().toJson(instance.endDate));
  writeNotNull('closed', instance.closed);
  writeNotNull('is_board', instance.isBoard);
  writeNotNull('can_edit', instance.canEdit);
  writeNotNull('can_vote', instance.canVote);
  writeNotNull('can_report', instance.canReport);
  writeNotNull('can_share', instance.canShare);
  writeNotNull('author_id', instance.authorId);
  writeNotNull('photo', instance.photo?.toJson());
  writeNotNull('background', instance.background?.toJson());
  writeNotNull('friends', instance.friends);
  writeNotNull('disable_unvote', instance.disableUnvote);
  writeNotNull('embed_hash', instance.embedHash);
  return val;
}

PollAttachmentAnswers _$PollAttachmentAnswersFromJson(
        Map<String, dynamic> json) =>
    PollAttachmentAnswers(
      id: json['id'] as int?,
      text: json['text'] as String?,
      votes: json['votes'] as int?,
      rate: (json['rate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PollAttachmentAnswersToJson(
    PollAttachmentAnswers instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('text', instance.text);
  writeNotNull('votes', instance.votes);
  writeNotNull('rate', instance.rate);
  return val;
}

PollAttachmentBackground _$PollAttachmentBackgroundFromJson(
        Map<String, dynamic> json) =>
    PollAttachmentBackground(
      id: json['id'] as int?,
      type: $enumDecodeNullable(
          _$PollAttachmentBackgroundTypeEnumMap, json['type']),
      angle: json['angle'] as int?,
      color: json['color'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      points: (json['points'] as List<dynamic>?)
          ?.map((e) => PollAttachmentBackgroundPoints.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PollAttachmentBackgroundToJson(
    PollAttachmentBackground instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', _$PollAttachmentBackgroundTypeEnumMap[instance.type]);
  writeNotNull('angle', instance.angle);
  writeNotNull('color', instance.color);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('images', instance.images);
  writeNotNull('points', instance.points?.map((e) => e.toJson()).toList());
  return val;
}

const _$PollAttachmentBackgroundTypeEnumMap = {
  PollAttachmentBackgroundType.gradient: 'gradient',
  PollAttachmentBackgroundType.tile: 'tile',
};

PollAttachmentBackgroundPoints _$PollAttachmentBackgroundPointsFromJson(
        Map<String, dynamic> json) =>
    PollAttachmentBackgroundPoints(
      position: json['position'] as num?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$PollAttachmentBackgroundPointsToJson(
    PollAttachmentBackgroundPoints instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('position', instance.position);
  writeNotNull('color', instance.color);
  return val;
}

StickerAttachment _$StickerAttachmentFromJson(Map<String, dynamic> json) =>
    StickerAttachment(
      productId: json['product_id'] as int?,
      stickerId: json['sticker_id'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) =>
              GeneralClassAttachmentImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      imagesWithBackground: (json['images_with_background'] as List<dynamic>?)
          ?.map((e) =>
              GeneralClassAttachmentImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      animationUrl: json['animation_url'] as String?,
      isAllowed: json['is_allowed'] as bool?,
    );

Map<String, dynamic> _$StickerAttachmentToJson(StickerAttachment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  writeNotNull('sticker_id', instance.stickerId);
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull('images_with_background',
      instance.imagesWithBackground?.map((e) => e.toJson()).toList());
  writeNotNull('animation_url', instance.animationUrl);
  writeNotNull('is_allowed', instance.isAllowed);
  return val;
}

VideoAttachment _$VideoAttachmentFromJson(Map<String, dynamic> json) =>
    VideoAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      duration:
          const DurationNullConverter().fromJson(json['duration'] as int?),
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => VideoAttachmentImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstFrame: (json['first_frame'] as List<dynamic>?)
          ?.map((e) =>
              GeneralClassAttachmentImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      addingDate:
          const DateTimeNullConverter().fromJson(json['adding_date'] as int?),
      views: json['views'] as int?,
      localViews: json['local_views'] as int?,
      comments: json['comments'] as int?,
      player: json['player'] as String?,
      platform: json['platform'] as String?,
      canAdd: whetherNull(json['can_add'] as int?),
      isPrivate: json['is_private'] as bool? ?? false,
      processing: json['processing'] as int?,
      isFavorite: json['is_favorite'] as bool?,
      canComment: whetherNull(json['can_comment'] as int?),
      canEdit: whetherNull(json['can_edit'] as int?),
      canLike: whetherNull(json['can_like'] as int?),
      canRepost: whetherNull(json['can_repost'] as int?),
      canSubscribe: whetherNull(json['can_subscribe'] as int?),
      canAddToFaves: whetherNull(json['can_add_to_faves'] as int?),
      canAttachLink: whetherNull(json['can_attach_link'] as int?),
      width: json['width'] as int?,
      height: json['height'] as int?,
      userId: json['user_id'] as int?,
      converting: whetherNull(json['converting'] as int?),
      added: whetherNull(json['added'] as int?),
      isSubscribed: whetherNull(json['is_subscribed'] as int?),
      repeat: fieldReturnedInCase(json['repeat'] as int?),
      videoType:
          $enumDecodeNullable(_$VideoAttachmentTypeEnumMap, json['type']),
      balance: json['balance'] as int?,
      liveStatus: $enumDecodeNullable(
          _$VideoAttachmentLiveStatusEnumMap, json['live_status']),
      live: fieldReturnedInCase(json['live'] as int?),
      upcoming: json['upcoming'] as int?,
      spectators: json['spectators'] as int?,
      likes: json['likes'] == null
          ? null
          : VideoAttachmentLikes.fromJson(
              json['likes'] as Map<String, dynamic>),
      reposts: json['reposts'] == null
          ? null
          : VideoAttachmentReposts.fromJson(
              json['reposts'] as Map<String, dynamic>),
      trackCode: json['track_code'] as String?,
    );

Map<String, dynamic> _$VideoAttachmentToJson(VideoAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull(
      'duration', const DurationNullConverter().toJson(instance.duration));
  writeNotNull('image', instance.image?.map((e) => e.toJson()).toList());
  writeNotNull(
      'first_frame', instance.firstFrame?.map((e) => e.toJson()).toList());
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  writeNotNull(
      'adding_date', const DateTimeNullConverter().toJson(instance.addingDate));
  writeNotNull('views', instance.views);
  writeNotNull('local_views', instance.localViews);
  writeNotNull('comments', instance.comments);
  writeNotNull('player', instance.player);
  writeNotNull('platform', instance.platform);
  writeNotNull('can_add', instance.canAdd);
  val['is_private'] = instance.isPrivate;
  writeNotNull('processing', instance.processing);
  writeNotNull('is_favorite', instance.isFavorite);
  writeNotNull('can_comment', instance.canComment);
  writeNotNull('can_edit', instance.canEdit);
  writeNotNull('can_like', instance.canLike);
  writeNotNull('can_repost', instance.canRepost);
  writeNotNull('can_subscribe', instance.canSubscribe);
  writeNotNull('can_add_to_faves', instance.canAddToFaves);
  writeNotNull('can_attach_link', instance.canAttachLink);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('user_id', instance.userId);
  writeNotNull('converting', instance.converting);
  writeNotNull('added', instance.added);
  writeNotNull('is_subscribed', instance.isSubscribed);
  val['repeat'] = instance.repeat;
  writeNotNull('type', _$VideoAttachmentTypeEnumMap[instance.videoType]);
  writeNotNull('balance', instance.balance);
  writeNotNull(
      'live_status', _$VideoAttachmentLiveStatusEnumMap[instance.liveStatus]);
  val['live'] = instance.live;
  writeNotNull('upcoming', instance.upcoming);
  writeNotNull('spectators', instance.spectators);
  writeNotNull('likes', instance.likes?.toJson());
  writeNotNull('reposts', instance.reposts?.toJson());
  writeNotNull('track_code', instance.trackCode);
  return val;
}

const _$VideoAttachmentTypeEnumMap = {
  VideoAttachmentType.video: 'video',
  VideoAttachmentType.musicVideo: 'music_video',
  VideoAttachmentType.movie: 'movie',
};

const _$VideoAttachmentLiveStatusEnumMap = {
  VideoAttachmentLiveStatus.waiting: 'waiting',
  VideoAttachmentLiveStatus.started: 'started',
  VideoAttachmentLiveStatus.finished: 'finished',
  VideoAttachmentLiveStatus.failed: 'failed',
  VideoAttachmentLiveStatus.upcoming: 'upcoming',
};

VideoAttachmentImage _$VideoAttachmentImageFromJson(
        Map<String, dynamic> json) =>
    VideoAttachmentImage(
      height: json['height'] as int?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      withPadding: fieldReturnedInCase(json['with_padding'] as int?),
    );

Map<String, dynamic> _$VideoAttachmentImageToJson(
    VideoAttachmentImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  val['with_padding'] = instance.withPadding;
  return val;
}

VideoAttachmentLikes _$VideoAttachmentLikesFromJson(
        Map<String, dynamic> json) =>
    VideoAttachmentLikes(
      likes: json['likes'] as int?,
      userLikes: whetherNull(json['user_likes'] as int?),
    );

Map<String, dynamic> _$VideoAttachmentLikesToJson(
    VideoAttachmentLikes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('likes', instance.likes);
  writeNotNull('user_likes', instance.userLikes);
  return val;
}

VideoAttachmentReposts _$VideoAttachmentRepostsFromJson(
        Map<String, dynamic> json) =>
    VideoAttachmentReposts(
      count: json['count'] as int?,
      wallCount: json['wall_count'] as int?,
      mailCount: json['mail_count'] as int?,
      userReposted: json['user_reposted'] as int?,
    );

Map<String, dynamic> _$VideoAttachmentRepostsToJson(
    VideoAttachmentReposts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('wall_count', instance.wallCount);
  writeNotNull('mail_count', instance.mailCount);
  writeNotNull('user_reposted', instance.userReposted);
  return val;
}

WallAttachment _$WallAttachmentFromJson(Map<String, dynamic> json) =>
    WallAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      accessKey: json['access_key'] as String?,
      fromId: json['from_id'] as int?,
      createdBy: json['created_by'] as int?,
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      text: json['text'] as String?,
      replyOwnerId: json['reply_owner_id'] as int?,
      replyPostId: json['reply_post_id'] as int?,
      friendsOnly: json['friends_only'] as int?,
      comments: json['comments'] == null
          ? null
          : WallAttachmentComments.fromJson(
              json['comments'] as Map<String, dynamic>),
      copyright: json['copyright'] == null
          ? null
          : WallAttachmentCopyright.fromJson(
              json['copyright'] as Map<String, dynamic>),
      likes: json['likes'] == null
          ? null
          : WallAttachmentLikes.fromJson(json['likes'] as Map<String, dynamic>),
      reposts: json['reposts'] == null
          ? null
          : WallAttachmentReposts.fromJson(
              json['reposts'] as Map<String, dynamic>),
      views: json['views'] == null
          ? null
          : WallAttachmentViews.fromJson(json['views'] as Map<String, dynamic>),
      postType: $enumDecodeNullable(
          _$WallAttachmentPostTypeEnumMap, json['post_type']),
      postSource: json['post_source'] == null
          ? null
          : WallAttachmentPostSource.fromJson(
              json['post_source'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => const AttachmentConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      geo: json['geo'] == null
          ? null
          : WallAttachmentGeo.fromJson(json['geo'] as Map<String, dynamic>),
      signerId: json['signer_id'] as int?,
      copyHistory: (json['copy_history'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      canPin: whetherNull(json['can_pin'] as int?),
      canDelete: whetherNull(json['can_delete'] as int?),
      canEdit: whetherNull(json['can_edit'] as int?),
      isPinned: json['is_pinned'] as int?,
      markedAsAds: whetherNull(json['marked_as_ads'] as int?),
      isFavorite: json['is_favorite'] as bool? ?? false,
      donut: json['donut'] == null
          ? null
          : WallAttachmentDonut.fromJson(json['donut'] as Map<String, dynamic>),
      postponedId: json['postponed_id'] as int?,
      toId: json['to_id'] as int?,
      shortTextRate: (json['short_text_rate'] as num?)?.toDouble(),
      carouselOffset: json['carousel_offset'] as int?,
      from: json['from'] as Map<String, dynamic>?,
      zoomText: json['zoom_text'] as bool?,
    );

Map<String, dynamic> _$WallAttachmentToJson(WallAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_key', instance.accessKey);
  writeNotNull('from_id', instance.fromId);
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  writeNotNull('text', instance.text);
  writeNotNull('reply_owner_id', instance.replyOwnerId);
  writeNotNull('reply_post_id', instance.replyPostId);
  writeNotNull('friends_only', instance.friendsOnly);
  writeNotNull('comments', instance.comments?.toJson());
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('likes', instance.likes?.toJson());
  writeNotNull('reposts', instance.reposts?.toJson());
  writeNotNull('views', instance.views?.toJson());
  writeNotNull('post_type', _$WallAttachmentPostTypeEnumMap[instance.postType]);
  writeNotNull('post_source', instance.postSource?.toJson());
  val['attachments'] =
      instance.attachments.map(const AttachmentConverter().toJson).toList();
  writeNotNull('geo', instance.geo?.toJson());
  writeNotNull('signer_id', instance.signerId);
  writeNotNull('copy_history', instance.copyHistory);
  writeNotNull('can_pin', instance.canPin);
  writeNotNull('can_delete', instance.canDelete);
  writeNotNull('can_edit', instance.canEdit);
  writeNotNull('is_pinned', instance.isPinned);
  writeNotNull('marked_as_ads', instance.markedAsAds);
  val['is_favorite'] = instance.isFavorite;
  writeNotNull('donut', instance.donut?.toJson());
  writeNotNull('postponed_id', instance.postponedId);
  writeNotNull('to_id', instance.toId);
  writeNotNull('short_text_rate', instance.shortTextRate);
  writeNotNull('carousel_offset', instance.carouselOffset);
  writeNotNull('from', instance.from);
  writeNotNull('zoom_text', instance.zoomText);
  return val;
}

const _$WallAttachmentPostTypeEnumMap = {
  WallAttachmentPostType.post: 'post',
  WallAttachmentPostType.copy: 'copy',
  WallAttachmentPostType.reply: 'reply',
  WallAttachmentPostType.postpone: 'postpone',
  WallAttachmentPostType.suggest: 'suggest',
};

WallAttachmentComments _$WallAttachmentCommentsFromJson(
        Map<String, dynamic> json) =>
    WallAttachmentComments(
      count: json['count'] as int?,
      canPost: whetherNull(json['can_post'] as int?),
      groupsCanPost: json['groups_can_post'] as int?,
      canClose: json['can_close'] as bool?,
      canOpen: json['can_open'] as bool?,
    );

Map<String, dynamic> _$WallAttachmentCommentsToJson(
    WallAttachmentComments instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('can_post', instance.canPost);
  writeNotNull('groups_can_post', instance.groupsCanPost);
  writeNotNull('can_close', instance.canClose);
  writeNotNull('can_open', instance.canOpen);
  return val;
}

WallAttachmentCopyright _$WallAttachmentCopyrightFromJson(
        Map<String, dynamic> json) =>
    WallAttachmentCopyright(
      id: json['id'] as int?,
      link: json['link'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$WallAttachmentCopyrightToJson(
    WallAttachmentCopyright instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('link', instance.link);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  return val;
}

WallAttachmentLikes _$WallAttachmentLikesFromJson(Map<String, dynamic> json) =>
    WallAttachmentLikes(
      count: json['count'] as int?,
      userLikes: whetherNull(json['user_likes'] as int?),
      canLike: whetherNull(json['can_like'] as int?),
      canPublish: whetherNull(json['can_publish'] as int?),
    );

Map<String, dynamic> _$WallAttachmentLikesToJson(WallAttachmentLikes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('user_likes', instance.userLikes);
  writeNotNull('can_like', instance.canLike);
  writeNotNull('can_publish', instance.canPublish);
  return val;
}

WallAttachmentReposts _$WallAttachmentRepostsFromJson(
        Map<String, dynamic> json) =>
    WallAttachmentReposts(
      count: json['count'] as int?,
      userReposted: whetherNull(json['user_reposted'] as int?),
      wallCount: json['wall_count'] as int?,
      mailCount: json['mail_count'] as int?,
    );

Map<String, dynamic> _$WallAttachmentRepostsToJson(
    WallAttachmentReposts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('user_reposted', instance.userReposted);
  writeNotNull('wall_count', instance.wallCount);
  writeNotNull('mail_count', instance.mailCount);
  return val;
}

WallAttachmentViews _$WallAttachmentViewsFromJson(Map<String, dynamic> json) =>
    WallAttachmentViews(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$WallAttachmentViewsToJson(WallAttachmentViews instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

WallAttachmentPostSource _$WallAttachmentPostSourceFromJson(
        Map<String, dynamic> json) =>
    WallAttachmentPostSource(
      type: $enumDecodeNullable(
          _$WallAttachmentPostSourceTypeEnumMap, json['type']),
      platform: $enumDecodeNullable(
          _$WallAttachmentPostSourcePlatformEnumMap, json['platform']),
      data: $enumDecodeNullable(
          _$WallAttachmentPostSourceDataEnumMap, json['data']),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$WallAttachmentPostSourceToJson(
    WallAttachmentPostSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$WallAttachmentPostSourceTypeEnumMap[instance.type]);
  writeNotNull(
      'platform', _$WallAttachmentPostSourcePlatformEnumMap[instance.platform]);
  writeNotNull('data', _$WallAttachmentPostSourceDataEnumMap[instance.data]);
  writeNotNull('url', instance.url);
  return val;
}

const _$WallAttachmentPostSourceTypeEnumMap = {
  WallAttachmentPostSourceType.vk: 'vk',
  WallAttachmentPostSourceType.widget: 'widget',
  WallAttachmentPostSourceType.api: 'api',
  WallAttachmentPostSourceType.rss: 'rss',
  WallAttachmentPostSourceType.sms: 'sms',
};

const _$WallAttachmentPostSourcePlatformEnumMap = {
  WallAttachmentPostSourcePlatform.android: 'android',
  WallAttachmentPostSourcePlatform.iphone: 'iphone',
  WallAttachmentPostSourcePlatform.wphone: 'wphone',
};

const _$WallAttachmentPostSourceDataEnumMap = {
  WallAttachmentPostSourceData.profileActivity: 'profile_activity',
  WallAttachmentPostSourceData.profilePhoto: 'profile_photo',
  WallAttachmentPostSourceData.comments: 'comments',
  WallAttachmentPostSourceData.like: 'like',
  WallAttachmentPostSourceData.poll: 'poll',
};

WallAttachmentGeo _$WallAttachmentGeoFromJson(Map<String, dynamic> json) =>
    WallAttachmentGeo(
      type: json['type'] as String?,
      coordinates: json['coordinates'] as String?,
      place: json['place'] == null
          ? null
          : PlaceObject.fromJson(json['place'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WallAttachmentGeoToJson(WallAttachmentGeo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('coordinates', instance.coordinates);
  writeNotNull('place', instance.place?.toJson());
  return val;
}

WallAttachmentDonut _$WallAttachmentDonutFromJson(Map<String, dynamic> json) =>
    WallAttachmentDonut(
      isDonut: json['is_donut'] as bool?,
      paidDuration: json['paid_duration'] as int?,
      placeholder: json['placeholder'] as Map<String, dynamic>?,
      canPublishFreeCopy: json['can_publish_free_copy'] as bool?,
      editMode: $enumDecodeNullable(
          _$WallAttachmentDonutEditModeEnumMap, json['edit_mode']),
    );

Map<String, dynamic> _$WallAttachmentDonutToJson(WallAttachmentDonut instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_donut', instance.isDonut);
  writeNotNull('paid_duration', instance.paidDuration);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('can_publish_free_copy', instance.canPublishFreeCopy);
  writeNotNull(
      'edit_mode', _$WallAttachmentDonutEditModeEnumMap[instance.editMode]);
  return val;
}

const _$WallAttachmentDonutEditModeEnumMap = {
  WallAttachmentDonutEditMode.all: 'all',
  WallAttachmentDonutEditMode.duration: 'duration',
};

WallReplyAttachment _$WallReplyAttachmentFromJson(Map<String, dynamic> json) =>
    WallReplyAttachment(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      postId: json['post_id'] as int?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) =>
              const AttachmentConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      date: const DateTimeNullConverter().fromJson(json['date'] as int?),
      donut: json['donut'] == null
          ? null
          : CommentObjectDonut.fromJson(json['donut'] as Map<String, dynamic>),
      fromId: json['from_id'] as int?,
      parentsStack: (json['parents_stack'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      replyToComment: json['reply_to_comment'] as int?,
      replyToUser: json['reply_to_user'] as int?,
      text: json['text'] as String?,
      thread: json['thread'] == null
          ? null
          : CommentObjectThread.fromJson(
              json['thread'] as Map<String, dynamic>),
      likes: json['likes'] == null
          ? null
          : WallAttachmentLikes.fromJson(json['likes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WallReplyAttachmentToJson(WallReplyAttachment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner_id': instance.ownerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('post_id', instance.postId);
  writeNotNull('attachments',
      instance.attachments?.map(const AttachmentConverter().toJson).toList());
  writeNotNull('date', const DateTimeNullConverter().toJson(instance.date));
  writeNotNull('donut', instance.donut?.toJson());
  writeNotNull('from_id', instance.fromId);
  writeNotNull('parents_stack', instance.parentsStack);
  writeNotNull('reply_to_comment', instance.replyToComment);
  writeNotNull('reply_to_user', instance.replyToUser);
  writeNotNull('text', instance.text);
  writeNotNull('thread', instance.thread?.toJson());
  writeNotNull('likes', instance.likes?.toJson());
  return val;
}
