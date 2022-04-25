import 'package:vk_library/vk_library.dart';

void main() {
  final vk = VK(options: VKOptions(token: ''));

  final longpoll = UserLongpoll(vk.api);

  longpoll.onUpdate().listen((event) {
    print('New update, type ${event[4]}\nObject:\n $event');
  });

  longpoll.onMessageNew().listen((event) {
    print('New message, id: ${event.id}\nObject: ${event.toJson()}');
  });
}
