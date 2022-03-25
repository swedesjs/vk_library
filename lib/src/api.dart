import 'package:dio/dio.dart';
import 'package:vk_library/src/methods/account.dart';
import 'package:vk_library/src/methods/ads.dart';
import 'package:vk_library/src/methods/adsweb.dart';
import 'package:vk_library/src/methods/appWidgets.dart';
import 'package:vk_library/src/methods/apps.dart';
import 'package:vk_library/src/methods/auth.dart';
import 'package:vk_library/src/methods/board.dart';
import 'package:vk_library/src/methods/database.dart';
import 'package:vk_library/src/methods/docs.dart';
import 'package:vk_library/src/methods/donut.dart';
import 'package:vk_library/src/methods/downloadedGames.dart';
import 'package:vk_library/src/methods/fave.dart';
import 'package:vk_library/src/methods/friends.dart';
import 'package:vk_library/src/methods/gifts.dart';
import 'package:vk_library/src/methods/groups.dart';
import 'package:vk_library/src/methods/leadForms.dart';
import 'package:vk_library/src/methods/likes.dart';
import 'package:vk_library/src/methods/market.dart';
import 'package:vk_library/src/methods/messages.dart';
import 'package:vk_library/src/methods/newsfeed.dart';
import 'package:vk_library/src/methods/notes.dart';
import 'package:vk_library/src/methods/notifications.dart';
import 'package:vk_library/src/methods/orders.dart';
import 'package:vk_library/src/methods/pages.dart';
import 'package:vk_library/src/methods/photos.dart';
import 'package:vk_library/src/methods/podcasts.dart';
import 'package:vk_library/src/methods/polls.dart';
import 'package:vk_library/src/methods/prettyCards.dart';
import 'package:vk_library/src/methods/search.dart';
import 'package:vk_library/src/methods/secure.dart';
import 'package:vk_library/src/methods/stats.dart';
import 'package:vk_library/src/methods/status.dart';
import 'package:vk_library/src/methods/storage.dart';
import 'package:vk_library/src/methods/store.dart';
import 'package:vk_library/src/methods/stories.dart';
import 'package:vk_library/src/methods/streaming.dart';
import 'package:vk_library/src/methods/users.dart';
import 'package:vk_library/src/methods/utils.dart';
import 'package:vk_library/src/methods/video.dart';
import 'package:vk_library/src/methods/wall.dart';
import 'package:vk_library/src/methods/widgets.dart';
import 'package:vk_library/src/models/api_exception.dart';
import 'package:vk_library/vk_library.dart';

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
  static const _baseUrl = 'https://api.vk.com/method/';

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
    final dio = await Dio().get<Map<String, dynamic>>(
      _baseUrl + method,
      queryParameters: {..._options.toJson(), ...?params},
    );

    final data = dio.data!;
    final error = data['error'];
    if (error != null) throw APIException.fromJson(error);

    return data;
  }
}
