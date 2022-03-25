import 'package:vk_library/src/api.dart';

class Database {
  final API _api;

  Database(this._api);

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

  Future<Map<String, dynamic>> getCitiesById({
    dynamic cityIds,
  }) =>
      _api.request('database.getCitiesById', {
        if (cityIds != null) 'city_ids': cityIds,
      });

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

  Future<Map<String, dynamic>> getCountriesById({
    dynamic countryIds,
  }) =>
      _api.request('database.getCountriesById', {
        if (countryIds != null) 'country_ids': countryIds,
      });

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

  Future<Map<String, dynamic>> getMetroStationsById({
    dynamic stationIds,
  }) =>
      _api.request('database.getMetroStationsById', {
        if (stationIds != null) 'station_ids': stationIds,
      });

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

  Future<Map<String, dynamic>> getSchoolClasses({
    int? countryId,
  }) =>
      _api.request('database.getSchoolClasses', {
        if (countryId != null) 'country_id': countryId,
      });

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
