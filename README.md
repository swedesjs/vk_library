<h1 align="center">vk_library</h1>
<p align="center"> 
  <br>This package is designed to work with VK api
</p>

# Example
```dart
import 'package:vk_library/vk_library.dart';

void main() async {
  final vk = VK(options: const VKOptions(token: ''));
  print(await vk.api.users.get(userIds: ['durov']));
}
```