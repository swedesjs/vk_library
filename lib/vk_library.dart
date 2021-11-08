/// Library for working with VK api. In the future, there will be support for LongPoll, Uploading documents, and all sorts of different utilities.
library vk_library;

import "dart:convert";
import "dart:io";
import "dart:math";

import "package:dio/dio.dart";
import "package:path/path.dart" as p;
import "package:yaml/yaml.dart";

part "src/api.dart";

// Enums
part "src/enums/_utils.dart";
part "src/enums/account/get_counters.dart";
part "src/enums/intent.dart";
part "src/enums/language.dart";
part "src/enums/media_type.dart";
part "src/enums/messages_set_activity_type.dart";
part "src/enums/name_case.dart";
part "src/enums/vk_config_file_type.dart";

// Exceptions
part "src/exceptions/api_exception.dart";
part "src/exceptions/vk_config_file_exception.dart";

// Models
part "src/models/api/account.dart";
part "src/models/api/ads.dart";
part "src/models/api/apps.dart";
part "src/models/api/appWidgets.dart";
part "src/models/api/auth.dart";
part "src/models/api/board.dart";
part "src/models/api/database.dart";
part "src/models/api/docs.dart";
part "src/models/api/donut.dart";
part "src/models/api/downloadedGames.dart";
part "src/models/api/fave.dart";
part "src/models/api/friends.dart";
part "src/models/api/gifts.dart";
part "src/models/api/groups.dart";
part "src/models/api/leadForms.dart";
part "src/models/api/likes.dart";
part "src/models/api/market.dart";
part "src/models/api/messages.dart";
part "src/models/api/newsfeed.dart";
part "src/models/api/notes.dart";
part "src/models/api/notifications.dart";
part "src/models/api/orders.dart";
part "src/models/api/pages.dart";
part "src/models/api/photos.dart";
part "src/models/api/podcasts.dart";
part "src/models/api/polls.dart";
part "src/models/api/status.dart";
part "src/models/api/store.dart";
part "src/models/api/users.dart";
part "src/models/api/utils.dart";
part "src/models/call.dart";
part "src/models/methods/params/messages/forward.dart";
//
part "src/typedef.dart";
part "src/vk.dart";
