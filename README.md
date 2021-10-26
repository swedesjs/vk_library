<h1 align="center">vk_library</h1>
<p align="center">
 <img src="https://img.shields.io/github/languages/code-size/swedesjs/vk_library?style=for-the-badge"/>
 <img src="https://img.shields.io/github/license/swedesjs/vk_library?color=blue&style=for-the-badge" />
 <img src="https://img.shields.io/tokei/lines/github/swedesjs/vk_library?style=for-the-badge"/>
 <br>Library for the Dart programming language to interact with the VK api</br>
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
