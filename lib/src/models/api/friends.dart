part of vk_library;

/// A class for using the [`friends`](https://vk.com/dev/friends) methods.
class Friends {
  final _CallMethodType _callMethod;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  Friends(API api) : _callMethod = api._callMethod("friends");

  /// Approves or creates a friend request.
  Future<int> add({int? userId, String? text, bool? follow}) async {
    final data = await _callMethod("add", {
      if (userId != null) "user_id": userId,
      if (text != null) "text": text,
      if (follow != null) "follow": follow,
    });

    return data.response;
  }

  /// Creates a new friend list for the current user.
  Future<Json> addList({required String name, List<int>? userIds}) async {
    final data = await _callMethod("addList", {
      "name": name,
      if (userIds != null) "user_ids": userIds.join(","),
    });

    return data.response;
  }

  /// Returns information about whether the current user is a friend of the specified users.
  ///
  /// It also returns information about the presence of an outgoing or incoming friend request (subscription).
  Future<List<Json>> areFriends({
    required List<int> userIds,
    bool? needSign,
    bool? extended,
  }) async {
    final data = await _callMethod("areFriends", {
      "user_ids": userIds,
      if (needSign != null) "need_sign": needSign,
      if (extended != null) "extended": extended,
    });

    return data.response;
  }

  /// Removes a user from the friends list or rejects a friend request.
  Future<Json> delete({int? userId}) async {
    final data = await _callMethod("delete", {
      if (userId != null) "user_id": userId,
    });

    return data.response;
  }

  /// Marks all incoming friend requests as viewed.
  Future<bool> deleteAllRequests() async {
    final data = await _callMethod("deleteAllRequests", const {});

    return data.response == 1;
  }

  /// Removes the current user's existing friend list.
  Future<bool> deleteList({required int listId}) async {
    final data = await _callMethod("deleteList", {"list_id": listId});

    return data.response == 1;
  }

  /// Edits the friends lists for the selected friend.
  Future<bool> edit({required int userId, List<int>? listIds}) async {
    final data = await _callMethod("edit", {
      "user_id": userId,
      if (listIds != null) "list_ids": listIds.join(","),
    });

    return data.response == 1;
  }

  /// Edits the current user's existing friends list.
  Future<bool> editList({
    String? name,
    required int listId,
    List<int>? userIds,
    List<int>? addUserIds,
    List<int>? deleteUserIds,
  }) async {
    final data = await _callMethod("editList", {
      if (name != null) "name": name,
      "list_id": listId,
      if (userIds != null) "user_ids": userIds.join(","),
      if (addUserIds != null) "add_user_ids": addUserIds.join(","),
      if (deleteUserIds != null) "delete_user_ids": deleteUserIds.join(","),
    });

    return data.response == 1;
  }

  /// Returns a list of the user's friend IDs or extended information about the user's friends (when using the [fields] parameter).
  Future<Json> get({
    int? userId,
    // TODO: Implement the enum this parameter - https://vk.com/dev/friends.get
    String? order,
    int? listId,
    int? count,
    int? offset,
    // TODO: Implement the class fields this parameter - https://vk.com/dev/friends.get
    Set<String>? fields,
    NameCase? nameCase,
    String? ref,
  }) async {
    final data = await _callMethod("get", {
      if (userId != null) "user_id": userId,
      if (order != null) "order": order,
      if (listId != null) "list_id": listId,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.stringValue(),
      if (ref != null) "ref": ref,
    });

    return data.response;
  }

  /// Returns a list of the current user's friend IDs who have installed this application.
  Future<List<int>> getAppUsers() async {
    final data = await _callMethod("getAppUsers", const {});

    return data.response;
  }

  /// Returns a list of the user's friends whose phone numbers, validated or specified in the profile, are included in the specified list.
  Future<List<Json>> getByPhones({
    List<String>? phones,
    // TODO: Implement the class fields this parameter - https://vk.com/dev/friends.getByPhones
    Set<String>? fields,
  }) async {
    final data = await _callMethod("getByPhones", {
      if (phones != null) "phones": phones.join(","),
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns a list of tags of the user's friends.
  Future<Json> getLists({int? userId, bool? returnSystem}) async {
    final data = await _callMethod("getLists", {
      if (userId != null) "user_id": userId,
      if (returnSystem != null) "return_system": returnSystem
    });

    return data.response;
  }

  /// Returns a list of common friends' IDs between a pair of users.
  ///
  /// The generic parameter [T] takes either [int] or [Map].
  Future<List<T>> getMutual<T extends Object>({
    int? sourceUid,
    int? targetUid,
    List<int>? targetUids,
    // TODO: Implement the enum this parameter - https://vk.com/dev/friends.getMutual
    String? order,
    int? count,
    int? offset,
  }) async {
    final data = await _callMethod("getMutual", {
      if (sourceUid != null) "source_uid": sourceUid,
      if (targetUid != null) "target_uid": targetUid,
      if (targetUids != null) "target_uids": targetUids.join(","),
      if (order != null) "order": order,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
    });

    return data.response;
  }

  /// Returns a list of IDs of the user's friends who are on the site.
  Future<Json> getOnline({
    int? userId,
    int? listId,
    bool? onlineMobile,
    // TODO: Implement the enum this parameter - https://vk.com/dev/friends.getOnline
    String? order,
    int? count,
    int? offset,
  }) async {
    final data = await _callMethod("getOnline", {
      if (userId != null) "user_id": userId,
      if (listId != null) "list_id": listId,
      if (onlineMobile != null) "online_mobile": onlineMobile,
      if (order != null) "order": order,
      if (count != null) "count": count,
      if (offset != null) "offset": offset,
    });

    return data.response;
  }

  /// Returns a list of recently added friends ids of the current user.
  Future<List<int>> getRecent({int? count}) async {
    final data = await _callMethod("getRecent", {
      if (count != null) "count": count,
    });

    return data.response;
  }

  /// Returns information about received or sent friend requests for the current user.
  Future<Json> getRequests({
    int? offset,
    int? count,
    bool? extended,
    bool? needMutual,
    bool? out,
    int? sort,
    bool? needViewed,
    bool? suggested,
    String? ref,
    // TODO: Implement a field class, and figure it out for undocumented bullshit.
    Set<String>? fields,
  }) async {
    final data = await _callMethod("getRequests", {
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (extended != null) "extended": extended,
      if (needMutual != null) "need_mutual": needMutual,
      if (out != null) "out": out,
      if (sort != null) "sort": sort,
      if (needViewed != null) "need_viewed": needViewed,
      if (suggested != null) "suggested": suggested,
      if (ref != null) "ref": ref,
      if (fields != null) "fields": fields.join(","),
    });

    return data.response;
  }

  /// Returns a list of user profiles that can be friends of the current user.
  Future<Json> getSuggestions({
    List<String>? filter,
    int? offset,
    int? count,
    // TODO: implement a field class - https://vk.com/dev/fields.getSuggestions
    Set<String>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _callMethod("getSuggestions", {
      if (filter != null) "filter": filter.join(","),
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.stringValue(),
    });

    return data.response;
  }

  /// Allows you to search through the list of users' friends.
  Future<Json> search({
    required int userId,
    String? q,
    // TODO: Implement the field class this parameter - https://vk.com/dev/friends.search
    Set<String>? fields,
    NameCase? nameCase,
    int? offset,
    int? count,
  }) async {
    final data = await _callMethod("search", {
      "user_id": userId,
      if (q != null) "q": q,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.stringValue(),
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
    });

    return data.response;
  }
}
