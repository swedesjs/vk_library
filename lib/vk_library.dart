/// Library for working with VK api. In the future, there will be support for LongPoll, Uploading documents, and all sorts of different utilities.
library vk_library;

import "dart:convert";
import "dart:io";

import "package:dio/dio.dart";
import "package:path/path.dart" as p;
import "package:yaml/yaml.dart";

import "vk_library_enums/vk_library_enums.dart"
    show Language, VKConfigFileType, languageString, EnumExtension;
import "vk_library_models/vk_library_models.dart";

part "src/api.dart";
part "src/call.dart";
part "src/exceptions/api_exception.dart";
part "src/exceptions/vk_config_file_exception.dart";
part "src/typedef.dart";
part "src/vk.dart";