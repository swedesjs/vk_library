part of vk_library_models;

/// A class for using the [`polls`](https://vk.com/dev/polls) methods.
class Polls {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const Polls(this._api);

  /// Gives the current user's voice for the selected response option in the specified survey.
  Future<int> addVote({
    int? ownerId,
    required int pollId,
    required List<int> answerIds,
    bool? isBoard,
  }) async {
    final data = await _api.call("polls.addVote", {
      if (ownerId != null) "owner_id": ownerId,
      "poll_id": pollId,
      "answer_ids": answerIds.join(","),
      if (isBoard != null) "is_board": isBoard,
    });

    return data.response;
  }

  /// Allows you to create polls that later can be attached to the records on the user page or community.
  Future<Json> create({
    String? question,
    bool? isAnonymous,
    bool? isMultiple,
    int? endDate,
    int? ownerId,
    int? appId,
    List<String>? addAnswers,
    int? photoId,
    int? backgroundId,
    bool? disableUnvote,
  }) async {
    final data = await _api.call("polls.create", {
      if (question != null) "question": question,
      if (isAnonymous != null) "is_anonymous": isAnonymous,
      if (isMultiple != null) "is_multiple": isMultiple,
      if (endDate != null) "end_date": endDate,
      if (ownerId != null) "owner_id": ownerId,
      if (appId != null) "app_id": appId,
      if (addAnswers != null) "add_answers": addAnswers,
      if (photoId != null) "photo_id": photoId,
      if (backgroundId != null) "background_id": backgroundId,
      if (disableUnvote != null) "disable_unvote": disableUnvote,
    });

    return data.response;
  }

  /// Removes the voice of the current user from the selected response option in the specified survey.
  Future<int> deleteVote({
    int? ownerId,
    required int pollId,
    required int answerId,
    bool? isBoard,
  }) async {
    final data = await _api.call("polls.deleteVote", {
      if (ownerId != null) "owner_id": ownerId,
      "poll_id": pollId,
      "answer_id": answerId,
      if (isBoard != null) "is_board": isBoard,
    });

    return data.response;
  }

  /// Allows you to edit the created polls.
  Future<bool> edit({
    int? ownerId,
    required int pollId,
    String? question,
    List<String>? addAnswers,
    Map<int, String>? editAnswers,
    List<int>? deleteAnswers,
    int? endDate,
    int? photoId,
    int? backgroundId,
  }) async {
    final data = await _api.call("polls.edit", {
      if (ownerId != null) "owner_id": ownerId,
      "poll_id": pollId,
      if (question != null) "question": question,
      if (addAnswers != null) "add_answers": addAnswers,
      if (editAnswers != null) "edit_answers": editAnswers,
      if (deleteAnswers != null) "delete_answers": deleteAnswers,
      if (endDate != null) "end_date": endDate,
      if (photoId != null) "photo_id": photoId,
      if (backgroundId != null) "background_id": backgroundId,
    });

    return data.response == 1;
  }

  /// Returns background image options for polls.
  Future<List<Json>> getBackgrounds() async {
    final data = await _api.call("polls.getBackgrounds", const {});

    return data.response;
  }

  /// Returns detailed information about the survey on its identifier.
  Future<Json> getById({
    int? ownerId,
    bool? isBoard,
    required int pollId,
    bool? extended,
    int? friendsCount,
    Set<String>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _api.call("polls.getById", {
      if (ownerId != null) "owner_id": ownerId,
      if (isBoard != null) "is_board": isBoard,
      "poll_id": pollId,
      if (extended != null) "extended": extended,
      if (friendsCount != null) "friends_count": friendsCount,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.value,
    });

    return data.response;
  }

  /// Returns the address of the server to download the background photo to the survey.
  Future<Json> getPhotoUploadServer({int? ownerId}) async {
    final data = await _api.call("polls.getPhotoUploadServer", {
      if (ownerId != null) "owner_id": ownerId,
    });

    return data.response;
  }

  /// Gets a list of user identifiers that have chosen certain response options in the survey.
  Future<Json> getVoters({
    int? ownerId,
    required int pollId,
    required List<int> answerIds,
    bool? isBoard,
    bool? friendsOnly,
    int? offset,
    int? count,
    Set<String>? fields,
    NameCase? nameCase,
  }) async {
    final data = await _api.call("polls.getVoters", {
      if (ownerId != null) "owner_id": ownerId,
      "poll_id": pollId,
      "answer_ids": answerIds.join(","),
      if (isBoard != null) "is_board": isBoard,
      if (friendsOnly != null) "friends_only": friendsOnly,
      if (offset != null) "offset": offset,
      if (count != null) "count": count,
      if (fields != null) "fields": fields.join(","),
      if (nameCase != null) "name_case": nameCase.value,
    });

    return data.response;
  }

  /// Saves a photo downloaded to the survey.
  Future<int> savePhoto({required String photo, required String hash}) async {
    final data =
        await _api.call("polls.savePhoto", {"photo": photo, "hash": hash});

    return data.response;
  }
}
