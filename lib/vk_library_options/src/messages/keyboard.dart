part of vk_library_options;

/// Constructor for creating the VK keyboard.
/// ```dart
/// await vk.api.messages.send(
///    chatId: 1,
///    message: "Hello",
///    keyboard: const Keyboard(
///      oneTime: true,
///      buttons: [
///        [KeyboardText(label: "Hello!")]
///      ],
///    ),
///  );
/// ```
class Keyboard {
  /// Whether to hide the keyboard after first use. The parameter works only for buttons that send a message ([KeyboardText] and [KeyboardLocation])
  final bool oneTime;

  /// Buttons.
  final List<List<_KeyboardButtons>> buttons;

  /// Whether the keyboard should be displayed inside the message.
  final bool inline;

  /// In order to create a keyboard, you need to specify the [buttons] parameter (this is an array of arrays containing classes: [KeyboardText], [KeyboardOpenLink], [KeyboardLocation], [KeyboardVKPay], [KeyboardVKApps] or [KeyboardCallback])
  ///
  /// If you want the keyboard to hide on the first press, then use the [oneTime] parameter
  ///
  /// If the keyboard should be displayed in a message, set the [inline] parameter to `true`.
  const Keyboard({
    this.oneTime = false,
    required this.buttons,
    this.inline = false,
  });

  /// Returns the copied [Keyboard].
  /// ```dart
  /// final keyboard = Keyboard(buttons: [
  ///   [KeyboardText(label: "Hello!")]
  /// ]);
  ///
  /// await vk.api.messages.send(
  ///   chatId: 1,
  ///   message: "Hello!",
  ///   keyboard: keyboard.copy()
  ///     ..buttons.add([
  ///       KeyboardText(label: "Hi, friend."),
  ///     ]),
  /// );
  /// 
  /// // Will give away a keyboard with one button.
  /// await vk.api.messages.send(chatId: 1, message: "Hello!", keyboard: keyboard);
  /// ```
  Keyboard copy() => Keyboard(
        oneTime: oneTime,
        buttons: [...buttons],
        inline: inline,
      );

  @override
  String toString() {
    return jsonEncode({
      "one_time": oneTime,
      "buttons": buttons.map((e) => e.map((e) => e._load()).toList()).toList(),
      "inline": inline,
    });
  }
}

abstract class _KeyboardButtons {
  /// Button type.
  final _KeyboardType type;

  /// Additional Information. Maximum 255 characters.
  final Object? payload;

  /// Button color.
  final KeyboardColor? color;

  const _KeyboardButtons({
    required this.type,
    required this.payload,
    this.color,
  });

  Map<String, Object> _build();

  Map<String, Object> _load() {
    return {
      "action": {
        "type": type.value,
        ..._build(),
        if (payload != null) "payload": payload,
      },
      if (type == _KeyboardType.TEXT || type == _KeyboardType.CALLBACK)
        "color": (color ?? KeyboardColor.SECONDARY).value,
    };
  }
}

/// Text button. Sends a message with the text specified in the [label] parameter.
class KeyboardText extends _KeyboardButtons {
  /// Button text. Will be sent by the user to the community dialog / conversation when clicked;
  final String? label;

  const KeyboardText({
    this.label,
    Object? payload,
    KeyboardColor? color,
  }) : super(type: _KeyboardType.TEXT, payload: payload, color: color);

  @override
  Map<String, Object> _build() => {if (label != null) "label": label!};
}

/// Opens the specified link in the [link] parameter.
class KeyboardOpenLink extends _KeyboardButtons {
  /// The link that must be opened by clicking on the button.
  final String? link;

  /// Button text.
  final String? label;

  const KeyboardOpenLink({
    this.link,
    this.label,
    Object? payload,
  }) : super(type: _KeyboardType.OPEN_LINK, payload: payload);

  @override
  Map<String, Object> _build() => {
        if (link != null) "link": link!,
        if (label != null) "label": label!,
      };
}

/// When clicked, it sends the location to the dialogue with the bot or conversation.
class KeyboardLocation extends _KeyboardButtons {
  const KeyboardLocation({
    Object? payload,
  }) : super(type: _KeyboardType.LOCATION, payload: payload);

  @override
  Map<String, Object> _build() => const {};
}

/// Opens the VK Pay payment window with predefined parameters. The button is called `Pay with VK pay`, VK pay is displayed as a logo. This button always spans the full width of the keyboard.
class KeyboardVKPay extends _KeyboardButtons {
  /// A string containing the VK Pay payment parameters and the app ID in the `aid` parameter, separated by `&`.
  ///
  /// Example: `action=transfer-to-group&group_id=1&aid=10`.
  final String? hash;

  const KeyboardVKPay({
    this.hash,
    Object? payload,
  }) : super(type: _KeyboardType.VKPAY, payload: payload);

  @override
  Map<String, Object> _build() => {if (hash != null) "hash": hash!};
}

/// Opens the specified VK Apps. This button always spans the full width of the keyboard.
class KeyboardVKApps extends _KeyboardButtons {
  /// The identifier of the called application with the VK Apps type.
  final int? appId;

  /// The ID of the community where the app is installed, if you want to open in a community context.
  final int? ownerId;

  /// The name of the app shown on the button.
  final String? label;

  /// Hash for navigation in the application, will be passed in the launch parameters string after the # character.
  final String? hash;

  const KeyboardVKApps({
    this.appId,
    this.ownerId,
    this.label,
    this.hash,
    Object? payload,
  }) : super(type: _KeyboardType.OPEN_APP, payload: payload);

  @override
  Map<String, Object> _build() => {
        if (appId != null) "app_id": appId!,
        if (ownerId != null) "owner_id": ownerId!,
        if (label != null) "label": label!,
        if (hash != null) "hash": hash!,
      };
}

/// Allows, without sending a message from the user, to receive a notification about pressing the button and perform the necessary action.
class KeyboardCallback extends _KeyboardButtons {
  /// Button text.
  final String? label;

  const KeyboardCallback({
    this.label,
    Object? payload,
    KeyboardColor? color,
  }) : super(type: _KeyboardType.CALLBACK, payload: payload, color: color);

  @override
  Map<String, Object> _build() => {if (label != null) "label": label!};
}

enum KeyboardColor {
  /// Blue button, denotes the main action. #5181B8
  PRIMARY,

  /// Plain white button. #FFFFFF
  SECONDARY,

  /// Dangerous action, or negative action (reject, delete, etc.). #E64646
  NEGATIVE,

  /// Agree, confirm. #4BB34B
  POSITIVE
}

enum _KeyboardType { TEXT, OPEN_LINK, LOCATION, VKPAY, OPEN_APP, CALLBACK }
