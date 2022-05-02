part of '../models.dart';

const _createFactoryOff = JsonSerializable(createFactory: false);

/// Keyboard for VK bots.
@_createFactoryOff
class Keyboard {
  /// Whether to hide the keyboard after first use.
  /// The parameter works only for buttons that send a message ([KeyboardText], [KeyboardLocation]).
  /// For [KeyboardVKApps], [KeyboardVKPay], the parameter is ignored.
  @JsonKey(name: 'one_time')
  final bool isOneTime;

  /// An array of arrays with buttons.
  final List<List<AbstractKeyboardAction>> buttons;

  /// Whether the keyboard should be displayed inside the message.
  @JsonKey(name: 'inline')
  final bool isInline;

  Keyboard({
    this.isOneTime = false,
    this.buttons = const [],
    this.isInline = false,
  });

  Map<String, dynamic> toJson() => _$KeyboardToJson(this);
}

/// Button color.
enum KeyboardColor {
  /// Blue button, indicates the main action.
  /// #5181B8
  primary,

  /// Plain white button.
  /// #FFFFFF
  secondary,

  /// A dangerous action, or a negative action (reject, remove, etc.).
  /// #E64646
  negative,

  /// Agree, confirm.
  /// #4BB34B
  positive
}

@JsonEnum(fieldRename: FieldRename.snake)
enum KeyboardActionType {
  text,
  openLink,
  location,
  @JsonValue('vkpay')
  vkPay,
  @JsonValue('open_app')
  vkApps,
  callback
}

/// An abstract class that combines part of the objects for the field [KeyboardButton.action]
///
/// Objects:
/// - [KeyboardText]
/// - [KeyboardOpenLink]
/// - [KeyboardLocation]
/// - [KeyboardVKPay]
/// - [KeyboardVKApps]
/// - [KeyboardCallback]
@JsonSerializable(createFactory: false, createToJson: false)
abstract class AbstractKeyboardAction {
  /// Button Type.
  final KeyboardActionType type;

  /// Additional information.
  final String? payload;

  @JsonKey(ignore: true)
  final KeyboardColor? color;

  AbstractKeyboardAction({
    required this.type,
    required this.payload,
    this.color,
  });

  // factory AbstractKeyboardAction.fromJson(Map<String, dynamic> json) {
  //   final type = $enumDecode(_$KeyboardActionTypeEnumMap, json['type']);
  //
  //   switch (type) {
  //     case KeyboardActionType.text:
  //       return KeyboardText.fromJson(json);
  //     case KeyboardActionType.openLink:
  //       return KeyboardOpenLink.fromJson(json);
  //     case KeyboardActionType.location:
  //       return KeyboardLocation.fromJson(json);
  //     case KeyboardActionType.vkPay:
  //       return KeyboardVKPay.fromJson(json);
  //     case KeyboardActionType.vkApps:
  //       return KeyboardVKApps.fromJson(json);
  //     case KeyboardActionType.callback:
  //       return KeyboardCallback.fromJson(json);
  //   }
  // }
  Map<String, dynamic> toActionJson();

  Map<String, dynamic> toJson() => {
        'action': toActionJson(),
        if (color != null) 'color': color!.name,
      };
}

const _label = JsonKey(name: 'label');

/// Text button.
/// Sends a message with the text specified in the [text] (label).
@_createFactoryOff
class KeyboardText extends AbstractKeyboardAction {
  /// Button text.
  @_label
  final String text;

  KeyboardText({
    required this.text,
    String? payload,
    KeyboardColor color = KeyboardColor.secondary,
  }) : super(type: KeyboardActionType.text, payload: payload, color: color);

  @override
  Map<String, dynamic> toActionJson() => _$KeyboardTextToJson(this);
}

/// Opens the specified link.
@_createFactoryOff
class KeyboardOpenLink extends AbstractKeyboardAction {
  /// Link to be opened by clicking on the button.
  final String link;

  /// Text button.
  @_label
  final String text;

  KeyboardOpenLink({required this.link, required this.text, String? payload})
      : super(type: KeyboardActionType.openLink, payload: payload);

  @override
  Map<String, dynamic> toActionJson() => _$KeyboardOpenLinkToJson(this);
}

/// On click, sends the location to the dialogue with the bot/conversation.
/// This button always takes up the full width of the keyboard.
@_createFactoryOff
class KeyboardLocation extends AbstractKeyboardAction {
  KeyboardLocation({String? payload})
      : super(type: KeyboardActionType.location, payload: payload);

  @override
  Map<String, dynamic> toActionJson() => _$KeyboardLocationToJson(this);
}

/// Opens the VK Pay payment window with predefined parameters.
/// The button is called `Pay with VK pay`, VK pay is displayed as a logo.
/// This button always takes up the full width of the keyboard.
@_createFactoryOff
class KeyboardVKPay extends AbstractKeyboardAction {
  /// A string containing the VK Pay payment parameters and the application ID in the aid parameter, separated by `&`.
  /// Example: `action=transfer-to-group&group_id=1&aid=10`.
  final String? hash;

  KeyboardVKPay({this.hash, String? payload})
      : super(type: KeyboardActionType.vkPay, payload: payload);

  @override
  Map<String, dynamic> toActionJson() => _$KeyboardVKPayToJson(this);
}

/// Opens the specified VK Apps.
/// This button always takes up the full width of the keyboard.
@_createFactoryOff
class KeyboardVKApps extends AbstractKeyboardAction {
  /// Called application identifier with type VK Apps.
  final int? appId;

  /// ID of the community in which the application is installed, if you want to open in the context of the community.
  final int? ownerId;

  /// The name of the application indicated on the button.
  @_label
  final String? name;

  /// Hash for navigation in the application, will be passed in the launch options line after the `#` symbol.
  final String? hash;

  KeyboardVKApps({
    this.appId,
    this.ownerId,
    this.name,
    this.hash,
    String? payload,
  }) : super(type: KeyboardActionType.vkApps, payload: payload);

  @override
  Map<String, dynamic> toActionJson() => _$KeyboardVKAppsToJson(this);
}

/// Allows you to receive a notification about pressing a button without sending a message from the user and perform the necessary action.
@_createFactoryOff
class KeyboardCallback extends AbstractKeyboardAction {
  /// Button text.
  @_label
  final String? text;

  KeyboardCallback({
    this.text,
    String? payload,
    KeyboardColor color = KeyboardColor.secondary,
  }) : super(type: KeyboardActionType.callback, payload: payload, color: color);

  @override
  Map<String, dynamic> toActionJson() => _$KeyboardCallbackToJson(this);
}
