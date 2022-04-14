part of 'objects.dart';
/// An object that describes a place
///
/// https://dev.vk.com/reference/objects/place
@JsonSerializable()
class PlaceObject {
  /// Place ID.
  final int? id;

  /// Place name.
  final String? title;

  /// Geographic latitude, specified in degrees (-90 to 90).
  final int? latitude;

  /// Geographic longitude, specified in degrees (-90 to 90).
  final int? longitude;

  /// Place creation date.
  @JsonKey(fromJson: dateNullFromJson)
  final DateTime? created;

  /// Location icon, image URL.
  final String? icon;

  /// The number of marks at this location.
  final int? checkins;

  /// Update date.
  @JsonKey(fromJson: dateNullFromJson)
  final DateTime? updated;

  /// Place type.
  final int? type;

  /// Id country.
  final int? country;

  /// Id city.
  final int? city;

  /// Place address.
  final String? address;

  PlaceObject({
    this.id,
    this.title,
    this.latitude,
    this.longitude,
    this.created,
    this.icon,
    this.checkins,
    this.updated,
    this.type,
    this.country,
    this.city,
    this.address,
  });

  factory PlaceObject.fromJson(Map<String, dynamic> json) =>
      _$PlaceObjectFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceObjectToJson(this);
}
