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
part "src/enums/intent.dart";
part "src/enums/language.dart";
part "src/enums/media_type.dart";
part "src/enums/messages_set_activity_type.dart";
part "src/enums/name_case.dart";
part "src/enums/vk_config_file_type.dart";
// Exceptions
part "src/exceptions/api_exception.dart";
part "src/exceptions/vk_config_file_exception.dart";
/// Fields
part "src/fields/fields.dart";
part "src/fields/user_object_fields.dart";
// Models
part "src/models/api/messages.dart";
part "src/models/call.dart";
part "src/models/methods/params/messages/forward.dart";
//
part "src/typedef.dart";
part "src/vk.dart";
