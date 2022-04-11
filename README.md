# vk_library
[![Pub](https://img.shields.io/pub/v/vk_library?color=blue&style=flat-square)](https://pub.dev/packages/vk_library)

VK SDK for Dart supporting all public methods of VK api, group longpoll, etc

## Get Started

### Add Dependency

```yaml
dependencies:
  vk_library: 1.0.3
```

### Create a base class to work with
```dart
final vk = VK(options: VKOptions(token: 'token'));
```

## Content

- [Examples](#examples)
- [Error processing](#error-processing)
- [Flaws and bugs](#flaws-and-bugs)

## Examples

API request:

```dart
final request = await vk.api.users.get(userIds: ['durov']);

print(request['response']);
```
> The same with the rest of the vk methods, syntax: `vk.api.<method_name>`

API request via native function:

```dart
final request = await vk.api.request('users.get', {'users_ids': ['durov']});

print(request['response']);
```

Receive longpoll updates:

```dart
final longpoll = GroupLongpoll(vk.api);

longpoll.onUpdate().listen((event) {
  print(event.toJson());
});

longpoll.start();
```

## Error processing

API request may result in an APIException:

```dart
try {
  await vk.api.groups.getById();
} on APIException catch (e) {
  print('Message: ${e.message}');
  print('Code: ${e.code}');
  print(e.requestParams.map((e) => e.toJson()).toList());
    
  rethrow;
}
```

## Flaws and bugs
Found a bug or a bug? - [issues tracker](https://github.com/swedesjs/vk_library/issues).