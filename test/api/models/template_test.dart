import 'package:test/test.dart';
import 'package:vk_library/vk_library.dart';

void main() {
  test('Object example template test', () {
    final example = Template(elements: [
      TemplateElement(
        photoId: '-109837093_457242811',
        action: const TemplateOpenPhoto(),
        buttons: [KeyboardText(text: 'Текст кнопки 🌚')],
      ),
      TemplateElement(
        photoId: '-109837093_457242811',
        action: const TemplateOpenPhoto(),
        buttons: [KeyboardText(text: 'Текст кнопки 2')],
      ),
      TemplateElement(
        photoId: '-109837093_457242811',
        action: const TemplateOpenPhoto(),
        buttons: [KeyboardText(text: 'Текст кнопки 3')],
      )
    ]);

    const equals = {
      'type': 'carousel',
      'elements': [
        {
          'photo_id': '-109837093_457242811',
          'action': {'type': 'open_photo'},
          'buttons': [
            {
              'action': {
                'type': 'text',
                'label': 'Текст кнопки 🌚',
              },
              'color': 'secondary'
            }
          ]
        },
        {
          'photo_id': '-109837093_457242811',
          'action': {'type': 'open_photo'},
          'buttons': [
            {
              'action': {
                'type': 'text',
                'label': 'Текст кнопки 2',
              },
              'color': 'secondary'
            }
          ]
        },
        {
          'photo_id': '-109837093_457242811',
          'action': {'type': 'open_photo'},
          'buttons': [
            {
              'action': {
                'type': 'text',
                'label': 'Текст кнопки 3',
              },
              'color': 'secondary'
            }
          ]
        }
      ]
    };

    expect(example.toJson(), equals);
  });

  test('Carousel element example test', () {
    final example = TemplateElement(
      title: 'Title',
      description: 'Description',
      action: const TemplateOpenLink(link: 'https://vk.com'),
      photoId: '-109837093_457242809',
      buttons: [KeyboardText(text: 'Label')],
    );

    const equals = {
      'title': 'Title',
      'description': 'Description',
      'action': {'type': 'open_link', 'link': 'https://vk.com'},
      'photo_id': '-109837093_457242809',
      'buttons': [
        {
          'action': {'type': 'text', 'label': 'Label'},
          'color': 'secondary'
        }
      ]
    };

    expect(example.toJson(), equals);
  });
}
