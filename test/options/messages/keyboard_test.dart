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
  test("An example from the VK documentation.", () {
    expect(
      jsonDecode(
        const Keyboard(buttons: [
          [
            KeyboardLocation(payload: {"button": "1"})
          ],
          [
            KeyboardVKApps(
              appId: 6232540,
              ownerId: -157525928,
              hash: "123",
              label: "LiveWidget",
            )
          ],
          [
            KeyboardVKPay(
              hash: "action=transfer-to-group&group_id=181108510&aid=10",
            )
          ],
          [
            KeyboardText(
              label: "Red",
              payload: {"button": "1"},
              color: KeyboardColor.NEGATIVE,
            ),
            KeyboardText(
              label: "Green",
              payload: {"button": "2"},
              color: KeyboardColor.POSITIVE,
            ),
            KeyboardText(
              label: "Blue",
              payload: {"button": "2"},
              color: KeyboardColor.PRIMARY,
            ),
            KeyboardText(label: "White", payload: {"button": "2"})
          ]
        ]).toString(),
      ),
      equals({
        "one_time": false,
        "buttons": [
          [
            {
              "action": {
                "type": "location",
                "payload": {"button": "1"}
              }
            }
          ],
          [
            {
              "action": {
                "type": "open_app",
                "app_id": 6232540,
                "owner_id": -157525928,
                "hash": "123",
                "label": "LiveWidget"
              }
            }
          ],
          [
            {
              "action": {
                "type": "vkpay",
                "hash": "action=transfer-to-group&group_id=181108510&aid=10"
              }
            }
          ],
          [
            {
              "action": {
                "type": "text",
                "payload": {"button": "1"},
                "label": "Red"
              },
              "color": "negative"
            },
            {
              "action": {
                "type": "text",
                "payload": {"button": "2"},
                "label": "Green"
              },
              "color": "positive"
            },
            {
              "action": {
                "type": "text",
                "payload": {"button": "2"},
                "label": "Blue"
              },
              "color": "primary"
            },
            {
              "action": {
                "type": "text",
                "payload": {"button": "2"},
                "label": "White"
              },
              "color": "secondary"
            }
          ]
        ],
        "inline": false
      }),
    );
  });
}
