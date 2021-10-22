library vk_library;

import "dart:convert";
import "dart:math";

import "package:dio/dio.dart";

part "src/api.dart";
part "src/api_exception.dart";
part "src/language.dart";
part "src/models/api/messages.dart";
part "src/models/call.dart";
part "src/models/methods/params/messages/forward.dart";
part "src/models/methods/returned/messages/deleteChatPhoto.dart";
part "src/models/methods/returned/messages/deleteConversation.dart";
part "src/models/methods/returned/messages/getByConversationMessageId.dart";
part "src/models/methods/returned/messages/getById.dart";
part "src/models/methods/returned/messages/getChat.dart";
part "src/models/methods/returned/messages/getChatPreview.dart";
part "src/models/methods/returned/messages/getConversationMembers.dart";
part "src/models/methods/returned/messages/getConversations.dart";
part "src/models/objects/chat.dart";
part "src/models/objects/intent.dart";
part "src/models/objects/media_type.dart";
part "src/models/objects/message_object.dart";
part "src/models/objects/messages_set_activity.dart";
part "src/models/objects/namecase.dart";
part "src/models/objects/photo_object.dart";
part "src/models/objects/profileObject.dart";
part "src/typedef.dart";
part "src/vk.dart";
