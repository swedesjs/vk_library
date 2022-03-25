import 'package:vk_library/src/api.dart';

class Users {
  final API _api;

  Users(this._api);

  Future<Map<String, dynamic>> get({
    dynamic userIds,
    dynamic fields,
    String? nameCase,
  }) =>
      _api.request('users.get', {
        if (userIds != null) 'user_ids': userIds,
        if (fields != null) 'fields': fields,
        if (nameCase != null) 'name_case': nameCase,
      });

  Future<Map<String, dynamic>> getFollowers({
    int? userId,
    int? offset,
    int? count,
    dynamic fields,
    String? nameCase,
  }) =>
      _api.request('users.getFollowers', {
        if (userId != null) 'user_id': userId,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields,
        if (nameCase != null) 'name_case': nameCase,
      });

  Future<Map<String, dynamic>> getSubscriptions({
    int? userId,
    bool? extended,
    int? offset,
    int? count,
    dynamic fields,
  }) =>
      _api.request('users.getSubscriptions', {
        if (userId != null) 'user_id': userId,
        if (extended != null) 'extended': extended,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields,
      });

  Future<Map<String, dynamic>> report({
    required int userId,
    required String type,
    String? comment,
  }) =>
      _api.request('users.report', {
        'user_id': userId,
        'type': type,
        if (comment != null) 'comment': comment,
      });

  Future<Map<String, dynamic>> search({
    String? q,
    int? sort,
    int? offset,
    int? count,
    dynamic fields,
    int? city,
    int? country,
    String? hometown,
    int? universityCountry,
    int? university,
    int? universityYear,
    int? universityFaculty,
    int? universityChair,
    int? sex,
    int? status,
    int? ageFrom,
    int? ageTo,
    int? birthDay,
    int? birthMonth,
    int? birthYear,
    bool? online,
    bool? hasPhoto,
    int? schoolCountry,
    int? schoolCity,
    int? schoolClass,
    int? school,
    int? schoolYear,
    String? religion,
    String? company,
    String? position,
    int? groupId,
    dynamic fromList,
  }) =>
      _api.request('users.search', {
        if (q != null) 'q': q,
        if (sort != null) 'sort': sort,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields,
        if (city != null) 'city': city,
        if (country != null) 'country': country,
        if (hometown != null) 'hometown': hometown,
        if (universityCountry != null) 'university_country': universityCountry,
        if (university != null) 'university': university,
        if (universityYear != null) 'university_year': universityYear,
        if (universityFaculty != null) 'university_faculty': universityFaculty,
        if (universityChair != null) 'university_chair': universityChair,
        if (sex != null) 'sex': sex,
        if (status != null) 'status': status,
        if (ageFrom != null) 'age_from': ageFrom,
        if (ageTo != null) 'age_to': ageTo,
        if (birthDay != null) 'birth_day': birthDay,
        if (birthMonth != null) 'birth_month': birthMonth,
        if (birthYear != null) 'birth_year': birthYear,
        if (online != null) 'online': online,
        if (hasPhoto != null) 'has_photo': hasPhoto,
        if (schoolCountry != null) 'school_country': schoolCountry,
        if (schoolCity != null) 'school_city': schoolCity,
        if (schoolClass != null) 'school_class': schoolClass,
        if (school != null) 'school': school,
        if (schoolYear != null) 'school_year': schoolYear,
        if (religion != null) 'religion': religion,
        if (company != null) 'company': company,
        if (position != null) 'position': position,
        if (groupId != null) 'group_id': groupId,
        if (fromList != null) 'from_list': fromList,
      });
}
