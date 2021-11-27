import "dart:convert";

import "package:test/test.dart";
import "package:vk_library/vk_library_options/vk_library_options.dart";

void main() {
  test("Basic Test", () {
    const photoId = "-109837093_457242811";

    expect(
        jsonDecode(const Template(elements: [
          TemplateElement(
            photoId: photoId,
            action: TemplateElementAction(
              type: TemplateElementActionType.OPEN_PHOTO,
            ),
            buttons: [KeyboardText(label: "Button text 🌚", payload: {})],
          ),
          TemplateElement(
            photoId: photoId,
            action: TemplateElementAction(
              type: TemplateElementActionType.OPEN_PHOTO,
            ),
            buttons: [KeyboardText(label: "Button text 2", payload: {})],
          ),
          TemplateElement(
            photoId: photoId,
            action: TemplateElementAction(
              type: TemplateElementActionType.OPEN_PHOTO,
            ),
            buttons: [KeyboardText(label: "Button text 3", payload: {})],
          ),
        ]).toString()),
        equals(const {
          "type": "carousel",
          "elements": [
            {
              "photo_id": "-109837093_457242811",
              "action": {"type": "open_photo"},
              "buttons": [
                {
                  "action": {
                    "type": "text",
                    "label": "Button text 🌚",
                    "payload": {}
                  },
                  "color": "secondary"
                }
              ]
            },
            {
              "photo_id": "-109837093_457242811",
              "action": {"type": "open_photo"},
              "buttons": [
                {
                  "action": {
                    "type": "text",
                    "label": "Button text 2",
                    "payload": {}
                  },
                  "color": "secondary"
                }
              ]
            },
            {
              "photo_id": "-109837093_457242811",
              "action": {"type": "open_photo"},
              "buttons": [
                {
                  "action": {
                    "type": "text",
                    "label": "Button text 3",
                    "payload": {}
                  },
                  "color": "secondary"
                }
              ]
            }
          ]
        }));
  });
}
