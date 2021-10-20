part of vk_library;

class PushSettings {
  final Json object;

  const PushSettings(this.object);

  int get sound => object["sound"];
  int get disabledUntil => object["disabled_until"];
}

class ChatObjects {
  final Json object;

  const ChatObjects(this.object);

  int get id => object["id"];

  String get type => object["type"];
  String get title => object["title"];

  int get adminId => object["admin_id"];

  List<Map> get users => object["users"];

  PushSettings get pushSettings => PushSettings(object["push_settings"]);

  String get photo_50 => object["photo_50"];
  String get photo_100 => object["photo_100"];
  String get photo_200 => object["photo_200"];

  int get left => object["left"];
  int get kicked => object["kicked"];
}
