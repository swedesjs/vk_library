/// Library for working with VK api. In the future, there will be support for LongPoll, Uploading documents, and all sorts of different utilities.
library vk_library;

import "dart:convert";
import "dart:io";
import "dart:math";

import "package:dio/dio.dart";
import "package:path/path.dart" as p;
import "package:yaml/yaml.dart";

part "src/api.dart";
part "src/api_exception.dart";
// Enums
part "src/enums/language.dart";
part "src/enums/media_type.dart";
part "src/enums/vk_config_file_type.dart";
// Models
part "src/models/api/messages.dart";
part "src/models/call.dart";
part "src/models/methods/params/messages/forward.dart";
// 
part "src/typedef.dart";
part "src/vk.dart";
