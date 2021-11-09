part of vk_library;

/// Default link where api requests are sent
final baseUrl = Uri(scheme: "https", host: "api.vk.com");

/// Default instance variable [Dio] for sending requests
final _dio = Dio(BaseOptions(validateStatus: (status) => true));

/// Instance of access to api vk
///
/// *Example*:
/// ```dart
/// final api = API("token", "5.131", Language.RU);
/// await api.messages.send(userId: 1, message: "Hello");
/// ```
class API {
  /// Secret token
  final String _token;

  /// API version
  final String _version;

  /// Language
  final Language _language;

  /// Field for calling methods [Account]
  late final Account account;

  /// Field for calling methods [Ads]
  late final Ads ads;

  /// Field for calling methods [Apps]
  late final Apps apps;

  /// Field for calling methods [AppWidgets]
  late final AppWidgets appWidgets;

  /// Field for calling methods [Auth]
  late final Auth auth;

  /// Field for calling methods [Board]
  late final Board board;

  /// Field for calling methods [Database]
  late final Database database;

  /// Field for calling methods [Docs]
  late final Docs docs;

  /// Field for calling methods [Donut]
  late final Donut donut;

  /// Field for calling methods [DownloadedGames]
  late final DownloadedGames downloadedGames;

  /// Field for calling methods [Fave]
  late final Fave fave;

  /// Field for calling methods [Friends]
  late final Friends friends;

  /// Field for calling methods [Gifts]
  late final Gifts gifts;

  /// Field for calling methods [Groups]
  late final Groups groups;

  /// Field for calling methods [LeadForms]
  late final LeadForms leadForms;

  /// Field for calling methods [Likes]
  late final Likes likes;

  /// Field for calling methods [Market]
  late final Market market;

  /// Field for calling methods [Messages]
  late final Messages messages;

  /// Field for calling methods [Newsfeed]
  late final Newsfeed newsfeed;

  /// Field for calling methods [Notes]
  late final Notes notes;

  /// Field for calling methods [Notifications]
  late final Notifications notifications;

  /// Field for calling methods [Orders]
  late final Orders orders;

  /// Field for calling methods [Pages]
  late final Pages pages;

  /// Field for calling methods [Photos]
  late final Photos photos;

  /// Field for calling methods [Podcasts]
  late final Podcasts podcasts;

  /// Field for calling methods [Polls]
  late final Polls polls;

  /// Field for calling methods [PrettyCards]
  late final PrettyCards prettyCards;

  /// Field for calling methods [Search]
  late final Search search;

  /// Field for calling methods [Secure]
  late final Secure secure;

  /// Field for calling methods [Stats]
  late final Stats stats;

  /// Field for calling methods [Users]
  late final Users users;

  /// Field for calling methods [Utils]
  late final Utils utils;

  /// Field for calling methods [Status]
  late final Status status;

  /// Field for calling methods [Store]
  late final Store store;

  /// Will create an instance of the [API] class by which you can access the api, specifying the token, api version and language
  API(this._token, this._version, this._language) {
    account = Account(this);
    ads = Ads(this);
    apps = Apps(this);
    appWidgets = AppWidgets(this);
    auth = Auth(this);
    board = Board(this);
    database = Database(this);
    docs = Docs(this);
    donut = Donut(this);
    downloadedGames = DownloadedGames(this);
    fave = Fave(this);
    friends = Friends(this);
    gifts = Gifts(this);
    groups = Groups(this);
    leadForms = LeadForms(this);
    likes = Likes(this);
    market = Market(this);
    messages = Messages(this);
    newsfeed = Newsfeed(this);
    notes = Notes(this);
    notifications = Notifications(this);
    orders = Orders(this);
    pages = Pages(this);
    photos = Photos(this);
    podcasts = Podcasts(this);
    polls = Polls(this);
    prettyCards = PrettyCards(this);
    search = Search(this);
    secure = Secure(this);
    stats = Stats(this);
    users = Users(this);
    utils = Utils(this);
    status = Status(this);
    store = Store(this);
  }

  /// The method sends a request to VK, and in case of an error, throws an exception [APIException]
  ///
  /// In the [methodName] parameter we indicate the name of the method, in [data] we indicate the data that needs to be sent to VK in the [Map] type
  /// ```dart
  /// await vk.api.call("users.get", const {"user_id": 1});
  /// ```
  Future<Call> call(
    String methodName,
    Json data,
  ) async {
    final response = await _dio.post<Json>(
      baseUrl.replace(path: "method/$methodName/").toString(),
      queryParameters: {
        "access_token": _token,
        "v": _version,
        "language": _languageEnum[_language],
        ...data,
      },
    );

    final responseData = response.data!;

    if (responseData["error"] != null) {
      final error = responseData["error"];

      throw APIException(
        code: error["error_code"],
        message: error["error_msg"],
        request_params: (error["request_params"] as List).cast<Json>(),
      );
    }

    return Call(responseData);
  }

  /// The method for accessing the api vk with this approach:
  /// ```dart
  /// final users = api.callMethod("users");
  ///
  /// final response = await users("get", const {"user_id": 1});
  /// print(response);
  /// ```
  /// The method returns a function to call.
  ///
  /// In the [methodName] parameter we specify the first part of the method, after the response in the `subMethodName` parameter we give the second part of the method
  ///
  /// Well, in [data] we give the data that needs to be sent to VK
  _CallMethodType _callMethod(String methodName) =>
      (String subMethodName, Json data) =>
          call("$methodName.$subMethodName", data);

  /// A generic method that allows you to run a sequence of other methods, storing and filtering intermediate results.
  Future<Call> execute({String? code, int? func_v}) async {
    return call("execute", {
      if (code != null) "code": code,
      if (func_v != null) "func_v": func_v,
    });
  }
}
