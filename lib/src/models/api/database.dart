part of vk_library;

/// A class for using the [`database`](https://vk.com/dev/database) methods.
class Database {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Database(this._api);

  /// Returns a list of university departments for the specified faculty.
  Future<Json> getChairs({
    required int facultyId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("database.getChairs", {
      "faculty_id": facultyId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns a list of cities.
  Future<Json> getCities({
    required int countryId,
    int? regionId,
    String? q,
    bool? needAll,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("database.getCities", {
      "country_id": countryId,
      if (regionId != null) "region_id": regionId,
      if (q != null) "q": q,
      if (needAll != null) "need_all": needAll,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns information about cities and regions by their identifiers.
  Future<List<Json>> getCitiesById({List<int>? cityIds}) async {
    final data = await _api.call("database.getCitiesById", {
      if (cityIds != null) "city_ids": cityIds.join(","),
    });

    return data.response;
  }

  /// Returns a list of countries.
  Future<Json> getCountries({
    bool? needAll,
    List<String>? code,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("database.getCountries", {
      if (needAll != null) "need_all": needAll,
      if (code != null) "code": code,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns information about countries by their identifiers.
  Future<List<Json>> getCountriesById({List<int>? countryIds}) async {
    final data = await _api.call("database.getCountriesById", {
      if (countryIds != null) "country_ids": countryIds.join(","),
    });

    return data.response;
  }

  /// Returns a list of faculties.
  Future<Json> getFaculties({
    required int universityId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("database.getFaculties", {
      "university_id": universityId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns a list of metro stations.
  Future<Json> getMetroStations({
    required int cityId,
    int? offset,
    int? count,
    bool? extended,
  }) async {
    final data = await _api.call("database.getMetroStations", {
      "city_id": cityId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Returns information about one or more metro stations by their identifiers.
  Future<List<Json>> getMetroStationsById({List<int>? stationIds}) async {
    final data = await _api.call("database.getMetroStationsById", {
      if (stationIds != null) "station_ids": stationIds.join(","),
    });

    return data.response;
  }

  /// Returns a list of regions.
  Future<Json> getRegions({
    required int countryId,
    String? q,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("database.getRegions", {
      "country_id": countryId,
      if (q != null) "q": q,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns a list of classes specific to schools in a specific country.
  Future<List<List>> getSchoolClasses({int? countryId}) async {
    final data = await _api.call("database.getSchoolClasses", {
      if (countryId != null) "country_id": countryId,
    });

    return data.response;
  }

  /// Returns a list of schools.
  Future<Json> getSchools({
    String? q,
    required int cityId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("database.getSchools", {
      if (q != null) "q": q,
      "city_id": cityId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns a list of higher education institutions.
  Future<Json> getUniversities({
    String? q,
    int? countryId,
    int? cityId,
    int? offset,
    int? count,
  }) async {
    final data = await _api.call("database.getUniversities", {
      if (q != null) "q": q,
      if (countryId != null) "country_id": countryId,
      if (cityId != null) "city_id": cityId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }
}
