<h1 align="center">vk_library</h1>
<p align="center">

  ![Code size](https://img.shields.io/github/languages/code-size/swedesjs/vk_library?style=for-the-badge)
  [![License](https://img.shields.io/github/license/swedesjs/vk_library?color=blue&style=for-the-badge)](https://github.com/swedesjs/vk_library/blob/master/LICENSE)
  ![Total lines](https://img.shields.io/tokei/lines/github/swedesjs/vk_library?style=for-the-badge)
</p>

# Example

```dart
import "package:vk_library/vk_library.dart";

void main() async {
  final vk = VK(
    token: "token",
    language: Language.RU,
    version: "5.131",
  );

  await vk.api.messages.send(chatId: 1, message: "Hello");

  final userInfo = await vk.api.call("users.get", {"user_id": 1});
  print(userInfo);
}
```
