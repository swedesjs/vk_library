import 'package:vk_library/vk_library.dart';

class Polls {
  final API _api;

  Polls(this._api);

  /// Adds the current user's vote to the selected answer in the poll.
  Future<Map<String, dynamic>> addVote({
    int? ownerId,
    required int pollId,
    required List<int> answerIds,
    bool? isBoard,
  }) =>
      _api.request('polls.addVote', {
        if (ownerId != null) 'owner_id': ownerId,
        'poll_id': pollId,
        'answer_ids': answerIds.join(','),
        if (isBoard != null) 'is_board': isBoard,
      });

  /// Creates polls that can be attached to the users' or communities' posts.
  Future<Map<String, dynamic>> create({
    String? question,
    bool? isAnonymous,
    bool? isMultiple,
    int? endDate,
    int? ownerId,
    int? appId,
    String? addAnswers,
    int? photoId,
    String? backgroundId,
    bool? disableUnvote,
  }) =>
      _api.request('polls.create', {
        if (question != null) 'question': question,
        if (isAnonymous != null) 'is_anonymous': isAnonymous,
        if (isMultiple != null) 'is_multiple': isMultiple,
        if (endDate != null) 'end_date': endDate,
        if (ownerId != null) 'owner_id': ownerId,
        if (appId != null) 'app_id': appId,
        if (addAnswers != null) 'add_answers': addAnswers,
        if (photoId != null) 'photo_id': photoId,
        if (backgroundId != null) 'background_id': backgroundId,
        if (disableUnvote != null) 'disable_unvote': disableUnvote,
      });

  /// Deletes the current user's vote from the selected answer in the poll.
  Future<Map<String, dynamic>> deleteVote({
    int? ownerId,
    required int pollId,
    required int answerId,
    bool? isBoard,
  }) =>
      _api.request('polls.deleteVote', {
        if (ownerId != null) 'owner_id': ownerId,
        'poll_id': pollId,
        'answer_id': answerId,
        if (isBoard != null) 'is_board': isBoard,
      });

  /// Edits created polls
  Future<Map<String, dynamic>> edit({
    int? ownerId,
    required int pollId,
    String? question,
    String? addAnswers,
    String? editAnswers,
    String? deleteAnswers,
    int? endDate,
    int? photoId,
    String? backgroundId,
  }) =>
      _api.request('polls.edit', {
        if (ownerId != null) 'owner_id': ownerId,
        'poll_id': pollId,
        if (question != null) 'question': question,
        if (addAnswers != null) 'add_answers': addAnswers,
        if (editAnswers != null) 'edit_answers': editAnswers,
        if (deleteAnswers != null) 'delete_answers': deleteAnswers,
        if (endDate != null) 'end_date': endDate,
        if (photoId != null) 'photo_id': photoId,
        if (backgroundId != null) 'background_id': backgroundId,
      });

  Future<Map<String, dynamic>> getBackgrounds() =>
      _api.request('polls.getBackgrounds');

  /// Returns detailed information about a poll by its ID.
  Future<Map<String, dynamic>> getById({
    int? ownerId,
    bool? isBoard,
    required int pollId,
    bool? extended,
    int? friendsCount,
    List<String>? fields,
    NameCase? nameCase,
  }) =>
      _api.request('polls.getById', {
        if (ownerId != null) 'owner_id': ownerId,
        if (isBoard != null) 'is_board': isBoard,
        'poll_id': pollId,
        if (extended != null) 'extended': extended,
        if (friendsCount != null) 'friends_count': friendsCount,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
      });

  Future<Map<String, dynamic>> getPhotoUploadServer({
    int? ownerId,
  }) =>
      _api.request('polls.getPhotoUploadServer', {
        if (ownerId != null) 'owner_id': ownerId,
      });

  /// Returns a list of IDs of users who selected specific answers in the poll.
  Future<Map<String, dynamic>> getVoters({
    int? ownerId,
    required int pollId,
    required List<int> answerIds,
    bool? isBoard,
    bool? friendsOnly,
    int? offset,
    int? count,
    List<Object>? fields,
    NameCase? nameCase,
  }) =>
      _api.request('polls.getVoters', {
        if (ownerId != null) 'owner_id': ownerId,
        'poll_id': pollId,
        'answer_ids': answerIds.join(','),
        if (isBoard != null) 'is_board': isBoard,
        if (friendsOnly != null) 'friends_only': friendsOnly,
        if (offset != null) 'offset': offset,
        if (count != null) 'count': count,
        if (fields != null) 'fields': fields.join(','),
        if (nameCase != null) 'name_case': nameCase,
      });

  Future<Map<String, dynamic>> savePhoto({
    required String photo,
    required String hash,
  }) =>
      _api.request('polls.savePhoto', {
        'photo': photo,
        'hash': hash,
      });
}
