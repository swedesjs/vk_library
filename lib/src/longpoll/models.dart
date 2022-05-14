import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:vk_library/src/longpoll/shared/all_attachmentable.dart';
import 'package:vk_library/src/longpoll/shared/attachmentable.dart';
import 'package:vk_library/vk_library.dart';
import 'models/converters.dart';
import 'shared/message_forwards_collection.dart';

export 'models/attachments/attachment.dart';
export 'models/objects/objects.dart';

part 'models.g.dart';

part 'models/helpers.dart';

part 'models/message_model.dart';

part 'models/transform_message.dart';

part 'models/update_group_longpoll.dart';