import 'package:vk_library/vk_library.dart';

void main() {
  final vk = VK(options: VKOptions(token: ''));

  final longpoll = GroupLongpoll(vk.api);

  longpoll.onUpdate().listen((event) {
    print('New update, type ${event.type}\nObject:\n ${event.object}');
  });

  longpoll.onMessageNew().listen((event) {
    print('New message, id: ${event.id}\nObject: ${event.toJson()}');
  });
}
