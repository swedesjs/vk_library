import 'package:test/test.dart';
import 'package:vk_library/src/api/models.dart';
import 'package:vk_library/src/vk.dart';
import 'package:vk_library/vk_library.dart';

void main() {
  test('Example Test', () {
    final example = Keyboard(isOneTime: false, buttons: [
      [KeyboardLocation()],
      [
        KeyboardVKApps(
          appId: 6232540,
          ownerId: -157525928,
          hash: '123',
          name: 'LiveWidget',
        )
      ],
      [
        KeyboardVKPay(
          hash: 'action=transfer-to-group&group_id=181108510&aid=10',
        )
      ],
      [
        KeyboardText(text: 'Red', color: KeyboardColor.negative),
        KeyboardText(text: 'Green', color: KeyboardColor.positive),
        KeyboardText(text: 'Blue', color: KeyboardColor.primary),
        KeyboardText(text: 'White', color: KeyboardColor.secondary)
      ]
    ]);

    const equals = {
      'one_time': false,
      'buttons': [
        [
          {
            'action': {'type': 'location'}
          }
        ],
        [
          {
            'action': {
              'type': 'open_app',
              'app_id': 6232540,
              'owner_id': -157525928,
              'label': 'LiveWidget',
              'hash': '123'
            }
          }
        ],
        [
          {
            'action': {
              'type': 'vkpay',
              'hash': 'action=transfer-to-group&group_id=181108510&aid=10'
            }
          }
        ],
        [
          {
            'action': {'type': 'text', 'label': 'Red'},
            'color': 'negative'
          },
          {
            'action': {'type': 'text', 'label': 'Green'},
            'color': 'positive'
          },
          {
            'action': {'type': 'text', 'label': 'Blue'},
            'color': 'primary'
          },
          {
            'action': {'type': 'text', 'label': 'White'},
            'color': 'secondary'
          }
        ]
      ],
      'inline': false
    };

    expect(example.toJson(), equals);
  });
}
