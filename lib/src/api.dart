import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:vk_library/vk_library.dart';

export 'methods/methods.dart';

class API {
  late final Account account;
  late final Ads ads;
  late final Adsweb adsweb;
  late final AppWidgets appWidgets;
  late final Apps apps;
  late final Auth auth;
  late final Board board;
  late final Database database;
  late final Docs docs;
  late final Donut donut;
  late final DownloadedGames downloadedGames;
  late final Fave fave;
  late final Friends friends;
  late final Gifts gifts;
  late final Groups groups;
  late final LeadForms leadForms;
  late final Likes likes;
  late final Market market;
  late final Messages messages;
  late final Newsfeed newsfeed;
  late final Notes notes;
  late final Notifications notifications;
  late final Orders orders;
  late final Pages pages;
  late final Photos photos;
  late final Podcasts podcasts;
  late final Polls polls;
  late final PrettyCards prettyCards;
  late final Search search;
  late final Secure secure;
  late final Stats stats;
  late final Status status;
  late final Storage storage;
  late final Store store;
  late final Stories stories;
  late final Streaming streaming;
  late final Users users;
  late final Utils utils;
  late final Video video;
  late final Wall wall;
  late final Widgets widgets;

  final VKOptions _options;
  static const _baseUrl = 'https://api.vk.com/method';

  API(this._options) {
    account = Account(this);
    ads = Ads(this);
    adsweb = Adsweb(this);
    appWidgets = AppWidgets(this);
    apps = Apps(this);
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
    status = Status(this);
    storage = Storage(this);
    store = Store(this);
    stories = Stories(this);
    streaming = Streaming(this);
    users = Users(this);
    utils = Utils(this);
    video = Video(this);
    wall = Wall(this);
    widgets = Widgets(this);
  }

  Future<Map<String, dynamic>> request(String method,
      [Map<String, dynamic>? params]) async {
    final dio = await Dio().post<Map<String, dynamic>>(
      '$_baseUrl/$method',
      data: <String, dynamic>{..._options.toJson(), ...?params}
          .entries
          .map((e) => '${e.key}=${_transformJson(e.value)}')
          .join('&'),
      options: Options(contentType: 'application/x-www-form-urlencoded'),
    );

    final data = dio.data!;
    final error = data['error'];
    if (error != null) throw APIException.fromJson(error);

    return data;
  }

  Object _transformJson(Object value) {
    if (value is List<Enum>) {
      return value.map((e) => e.name).join(',');
    }

    if (value is Enum) {
      return value.name;
    }

    if (value is Map<String, dynamic> && value is List<dynamic>) {
      return jsonEncode(value);
    }

    return value;
  }
}
