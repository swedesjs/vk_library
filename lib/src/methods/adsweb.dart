import 'package:vk_library/src/api.dart';

class Adsweb {
  final API _api;

  Adsweb(this._api);

  Future<Map<String, dynamic>> getAdCategories({
    required int officeId,
  }) =>
      _api.request('adsweb.getAdCategories', {
        'office_id': officeId,
      });

  Future<Map<String, dynamic>> getAdUnitCode() =>
      _api.request('adsweb.getAdUnitCode');

  Future<Map<String, dynamic>> getAdUnits({
    required int officeId,
    String? sitesIds,
    String? adUnitsIds,
    String? fields,
    int? limit,
    int? offset,
  }) =>
      _api.request('adsweb.getAdUnits', {
        'office_id': officeId,
        if (sitesIds != null) 'sites_ids': sitesIds,
        if (adUnitsIds != null) 'ad_units_ids': adUnitsIds,
        if (fields != null) 'fields': fields,
        if (limit != null) 'limit': limit,
        if (offset != null) 'offset': offset,
      });

  Future<Map<String, dynamic>> getFraudHistory({
    required int officeId,
    String? sitesIds,
    int? limit,
    int? offset,
  }) =>
      _api.request('adsweb.getFraudHistory', {
        'office_id': officeId,
        if (sitesIds != null) 'sites_ids': sitesIds,
        if (limit != null) 'limit': limit,
        if (offset != null) 'offset': offset,
      });

  Future<Map<String, dynamic>> getSites({
    required int officeId,
    String? sitesIds,
    String? fields,
    int? limit,
    int? offset,
  }) =>
      _api.request('adsweb.getSites', {
        'office_id': officeId,
        if (sitesIds != null) 'sites_ids': sitesIds,
        if (fields != null) 'fields': fields,
        if (limit != null) 'limit': limit,
        if (offset != null) 'offset': offset,
      });

  Future<Map<String, dynamic>> getStatistics({
    required int officeId,
    required String idsType,
    required String ids,
    required String period,
    required String dateFrom,
    required String dateTo,
    String? fields,
    int? limit,
    String? pageId,
  }) =>
      _api.request('adsweb.getStatistics', {
        'office_id': officeId,
        'ids_type': idsType,
        'ids': ids,
        'period': period,
        'date_from': dateFrom,
        'date_to': dateTo,
        if (fields != null) 'fields': fields,
        if (limit != null) 'limit': limit,
        if (pageId != null) 'page_id': pageId,
      });
}
