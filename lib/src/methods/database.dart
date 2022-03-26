import 'package:vk_library/src/api.dart';

class Database {
  final API _api;

  Database(this._api);

  /// Returns list of chairs on a specified faculty.
  Future<Map<String, dynamic>> getChairs({
    required int facultyId,
    int? offset,
    int? count,
  }) =>
      _api.request('database.getChairs', {
        'faculty_id': facultyId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns a list of cities.
  Future<Map<String, dynamic>> getCities({
    required int countryId,
    int? regionId,
    String? q,
    bool? needAll,
    int? offset,
    int? count,
  }) =>
      _api.request('database.getCities', {
        'country_id': countryId,
        if (regionId != null) 'region_id': regionId,
        if (q != null) 'q': q,
        if (needAll != null) 'need_all': needAll,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns information about cities by their IDs.
  Future<Map<String, dynamic>> getCitiesById({
    List<int>? cityIds,
  }) =>
      _api.request('database.getCitiesById', {
        if (cityIds != null) 'city_ids': cityIds.join(','),
      });

  /// Returns a list of countries.
  Future<Map<String, dynamic>> getCountries({
    bool? needAll,
    String? code,
    int? offset,
    int? count,
  }) =>
      _api.request('database.getCountries', {
        if (needAll != null) 'need_all': needAll,
        if (code != null) 'code': code,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns information about countries by their IDs.
  Future<Map<String, dynamic>> getCountriesById({
    List<int>? countryIds,
  }) =>
      _api.request('database.getCountriesById', {
        if (countryIds != null) 'country_ids': countryIds.join(','),
      });

  /// Returns a list of faculties (i.e., university departments).
  Future<Map<String, dynamic>> getFaculties({
    required int universityId,
    int? offset,
    int? count,
  }) =>
      _api.request('database.getFaculties', {
        'university_id': universityId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Get metro stations by city
  Future<Map<String, dynamic>> getMetroStations({
    required int cityId,
    int? offset,
    int? count,
    bool? extended,
  }) =>
      _api.request('database.getMetroStations', {
        'city_id': cityId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (extended != null) 'extended': extended,
      });

  /// Get metro station by his id
  Future<Map<String, dynamic>> getMetroStationsById({
    List<int>? stationIds,
  }) =>
      _api.request('database.getMetroStationsById', {
        if (stationIds != null) 'station_ids': stationIds.join(','),
      });

  /// Returns a list of regions.
  Future<Map<String, dynamic>> getRegions({
    required int countryId,
    String? q,
    int? offset,
    int? count,
  }) =>
      _api.request('database.getRegions', {
        'country_id': countryId,
        if (q != null) 'q': q,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns a list of school classes specified for the country.
  Future<Map<String, dynamic>> getSchoolClasses({
    int? countryId,
  }) =>
      _api.request('database.getSchoolClasses', {
        if (countryId != null) 'country_id': countryId,
      });

  /// Returns a list of schools.
  Future<Map<String, dynamic>> getSchools({
    String? q,
    required int cityId,
    int? offset,
    int? count,
  }) =>
      _api.request('database.getSchools', {
        if (q != null) 'q': q,
        'city_id': cityId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });

  /// Returns a list of higher education institutions.
  Future<Map<String, dynamic>> getUniversities({
    String? q,
    int? countryId,
    int? cityId,
    int? offset,
    int? count,
  }) =>
      _api.request('database.getUniversities', {
        if (q != null) 'q': q,
        if (countryId != null) 'country_id': countryId,
        if (cityId != null) 'city_id': cityId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
      });
}
