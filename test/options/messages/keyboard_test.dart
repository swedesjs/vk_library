import "dart:convert";

import "package:test/test.dart";
import "package:vk_library/vk_library_enums/vk_library_enums.dart"
    show EnumExtension;
import "package:vk_library/vk_library_options/vk_library_options.dart";

void main() {
  test("Checking for keyboard types.", () {
    expect(
      const [
        KeyboardText(),
        KeyboardOpenLink(),
        KeyboardLocation(),
        KeyboardVKPay(),
        KeyboardVKApps(),
        KeyboardCallback(),
      ].map((e) => e.type.value),
      const ["text", "open_link", "location", "vkpay", "open_app", "callback"],
    );
  });

  test("Basic test", () {
    expect(
      jsonDecode(const Keyboard(oneTime: true, buttons: []).toString()),
      equals({"one_time": true, "buttons": const [], "inline": false}),
    );

    expect(
      jsonDecode(
        const Keyboard(oneTime: true, buttons: [
          [KeyboardText(label: "Hello!")]
        ]).toString(),
      ),
      equals({
        "one_time": true,
        "buttons": const [
          [
            {
              "action": {
                "type": "text",
                "label": "Hello!",
              },
              "color": "secondary"
            }
          ]
        ],
        "inline": false
      }),
    );

    expect(
      jsonDecode(
        const Keyboard(buttons: [
          [KeyboardText(label: "Hello!")],
          [KeyboardText(label: "Goodbye!", color: KeyboardColor.PRIMARY)],
          [
            KeyboardCallback(
              label: "Hang up the dialogue",
              color: KeyboardColor.NEGATIVE,
            ),
            KeyboardCallback(
              label: "Next answer option",
              color: KeyboardColor.POSITIVE,
            )
          ]
        ]).toString(),
      ),
      equals({
        "one_time": false,
        "buttons": const [
          [
            {
              "action": {"type": "text", "label": "Hello!"},
              "color": "secondary"
            }
          ],
          [
            {
              "action": {"type": "text", "label": "Goodbye!"},
              "color": "primary"
            }
          ],
          [
            {
              "action": {"type": "callback", "label": "Hang up the dialogue"},
              "color": "negative"
            },
            {
              "action": {"type": "callback", "label": "Next answer option"},
              "color": "positive"
            }
          ]
        ],
        "inline": false,
      }),
    );
  });
}
