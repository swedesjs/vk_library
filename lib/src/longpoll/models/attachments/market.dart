part of 'attachment.dart';

@JsonSerializable()
class MarketAttachment extends Attachment {
  /// Item ID.
  final int id;

  /// Item owner ID.
  final int ownerId;

  /// Content access key.
  final String? accessKey;

  /// Product Name.
  final String? title;

  /// Product description text.
  final String? description;

  /// Price.
  final MarketAttachmentPrice? price;

  /// Product dimensions.
  final MarketAttachmentDimensions? dimensions;

  /// Weight in grams.
  final int? weight;

  /// Product category.
  final MarketAttachmentCategory? category;

  /// Product cover image URL.
  final String? thumbPhoto;

  /// Product creation date.
  @JsonKey(fromJson: dateFromJson)
  final DateTime? date;

  /// Product availability status.
  final MarketAttachmentAvailability? availability;

  /// true if the item is bookmarked by the current user.
  final bool isFavorite;

  /// Product SKU, arbitrary string up to 50 characters long.
  final String? sku;

  /// Product images.
  final List<Map<String, dynamic>>? photos;

  /// Ability to comment on a product for the current user.
  @JsonKey(fromJson: whetherNull)
  final bool? canComment;

  /// Ability to repost a product for the current user
  @JsonKey(fromJson: whetherNull)
  final bool? canRepost;

  /// Information about "Like" marks.
  final Map<String, dynamic>? likes;

  /// Link to the product in external resources.
  final String? url;

  /// The text on the product button.
  final String? buttonTitle;

  MarketAttachment({
    required this.id,
    required this.ownerId,
    this.accessKey,
    this.title,
    this.description,
    this.price,
    this.dimensions,
    this.weight,
    this.category,
    this.thumbPhoto,
    this.date,
    this.availability,
    this.isFavorite = false,
    this.sku,
    this.photos,
    this.canComment,
    this.canRepost,
    this.likes,
    this.url,
    this.buttonTitle,
  }) : super(type: AttachmentType.market);

  factory MarketAttachment.fromJson(Map<String, dynamic> json) =>
      _$MarketAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MarketAttachmentToJson(this);
}

enum MarketAttachmentAvailability {
  @JsonValue(0)
  available,
  @JsonValue(1)
  removed,
  @JsonValue(2)
  notAvailable
}

@JsonSerializable()
class MarketAttachmentPrice {
  /// The price of goods in hundredths of a currency unit;
  final String? amount;

  /// Currency.
  final MarketAttachmentPriceCurrency? currency;

  /// The old price of the goods in hundredths of a currency unit.
  final String? oldAmount;

  /// String representation of the price.
  final String? text;

  MarketAttachmentPrice({
    this.amount,
    this.currency,
    this.oldAmount,
    this.text,
  });

  factory MarketAttachmentPrice.fromJson(Map<String, dynamic> json) =>
      _$MarketAttachmentPriceFromJson(json);

  Map<String, dynamic> toJson() => _$MarketAttachmentPriceToJson(this);
}

@JsonSerializable()
class MarketAttachmentPriceCurrency {
  /// Currency identifier.
  final int? id;

  /// Currency symbol.
  final String? name;

  MarketAttachmentPriceCurrency({this.id, this.name});

  factory MarketAttachmentPriceCurrency.fromJson(Map<String, dynamic> json) =>
      _$MarketAttachmentPriceCurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$MarketAttachmentPriceCurrencyToJson(this);
}

@JsonSerializable()
class MarketAttachmentDimensions {
  /// Width in millimeters.
  final int? width;

  /// Height in millimeters.
  final int? height;

  /// Length in millimeters.
  final int? length;

  MarketAttachmentDimensions({this.width, this.height, this.length});

  factory MarketAttachmentDimensions.fromJson(Map<String, dynamic> json) =>
      _$MarketAttachmentDimensionsFromJson(json);

  Map<String, dynamic> toJson() => _$MarketAttachmentDimensionsToJson(this);
}

@JsonSerializable()
class MarketAttachmentCategory {
  /// Category ID.
  final int? id;

  /// Name of category.
  final String? name;

  /// Section.
  final MarketAttachmentCategorySection? section;

  MarketAttachmentCategory({this.id, this.name, this.section});

  factory MarketAttachmentCategory.fromJson(Map<String, dynamic> json) =>
      _$MarketAttachmentCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$MarketAttachmentCategoryToJson(this);
}

@JsonSerializable()
class MarketAttachmentCategorySection {
  /// Section identifier.
  final int? id;

  /// Section name.
  final String? name;

  MarketAttachmentCategorySection({this.id, this.name});

  factory MarketAttachmentCategorySection.fromJson(Map<String, dynamic> json) =>
      _$MarketAttachmentCategorySectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MarketAttachmentCategorySectionToJson(this);
}
