part of vk_library;

/// A class for using the [`users`](https://vk.com/dev/users) methods.
class Users {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Users(API api) : _callMethod = api._callMethod("users");

  /// Returns extended information about users.
  Future<List<Json>> get({
    int? userId,
    List<int>? userIds,
    List<UserObjectFields>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _callMethod("get", {
      if (userId != null) "user_id": userId,
      if (userIds != null) "user_ids": userIds,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.stringValue(),
    });

    return data.response;
  }

  /// Returns a list of user IDs that are subscribers to the user.
  Future<List<Json>> getFollowers({
    int? userId,
    int? offset,
    int? count,
    List<UserObjectFields>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _callMethod("getFollowers", {
      if (userId != null) "user_id": userId,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.stringValue(),
    });

    return data.response;
  }

  /// Returns a list of user IDs and public pages that are included in the user's subscription list.
  Future<Json> getSubscriptions({
    int? userId,
    bool? extended,
    int? offset,
    int? count,
    List<UserOrCommunityObjectFields>? fields,
  }) async {
    final data = await _callMethod("getSubscriptions", {
      if (userId != null) "user_id": userId,
      if (extended != null) "extended": extended,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Allows you to report a user.
  Future<bool> report({
    required int userId,
    // TODO: Implement enum, source - https://vk.com/dev/users.report
    String? type,
    String? comment,
  }) async {
    final data = await _callMethod("report", {
      "user_id": userId,
      if (type != null) "type": type,
      if (comment != null) "comment": comment,
    });

    return data.response == 1;
  }

  /// Returns a list of users matching the specified search criteria.
  Future<Json> search({
    String? q,
    // TODO: Implement the enum.
    int? sort,
    int? offset,
    int? count,
    List<UserObjectFields>? fields,
    int? city,
    int? country,
    String? hometown,
    int? universityCountry,
    int? university,
    int? universityYear,
    int? universityFaculty,
    int? universityChair,
    // TODO: Implement the enum.
    int? sex,
    // TODO: Implement the enum.
    int? status,
    int? ageFrom,
    int? ageTo,
    int? birthDay,
    int? birthMonth,
    int? birthYear,
    // TODO: Implement the enum.
    int? online,
    // TODO: Implement the enum.
    int? hasPhoto,
    int? schoolCountry,
    int? schoolCity,
    int? schoolClass,
    int? school,
    int? schoolYear,
    String? religion,
    String? company,
    String? position,
    int? groupId,
    // TODO: Implement the enum.
    Set<String>? fromList,
  }) async {
    final data = await _callMethod("search", {
      if (q != null) "q": q,
      if (sort != null) "sort": sort,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (city != null) "city": city,
      if (country != null) "country": country,
      if (hometown != null) "hometown": hometown,
      if (universityCountry != null) "university_country": universityCountry,
      if (university != null) "university": university,
      if (universityYear != null) "university_year": universityYear,
      if (universityFaculty != null) "university_faculty": universityFaculty,
      if (universityChair != null) "university_chair": universityChair,
      if (sex != null) "sex": sex,
      if (status != null) "status": status,
      if (ageFrom != null) "age_from": ageFrom,
      if (ageTo != null) "age_to": ageTo,
      if (birthDay != null) "birth_day": birthDay,
      if (birthMonth != null) "birth_month": birthMonth,
      if (birthYear != null) "birth_year": birthYear,
      if (online != null) "online": online,
      if (hasPhoto != null) "has_photo": hasPhoto,
      if (schoolCountry != null) "school_country": schoolCountry,
      if (schoolCity != null) "school_city": schoolCity,
      if (schoolClass != null) "school_class": schoolClass,
      if (school != null) "school": school,
      if (religion != null) "religion": religion,
      if (company != null) "company": company,
      if (position != null) "position": position,
      if (groupId != null) "group_id": groupId,
      if (fromList != null) "from_list": fromList.join(","),
    });

    return data.response;
  }
}
