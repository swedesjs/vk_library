part of '../models.dart';

/// Message template that contains multiple elements, carousel elements can be scrolled horizontally.
@_createFactoryOff
class Template {
  /// List of carousel items.
  final List<TemplateElement> elements;

  Template({this.elements = const []});

  Map<String, dynamic> toJson() => {
        'type': 'carousel',
        ..._$TemplateToJson(this),
      };
}

/// Template element.
@_createFactoryOff
class TemplateElement {
  /// Title, 80 characters maximum.
  final String? title;

  /// Subtitle, 80 characters maximum.
  final String? description;

  /// The ID of the image to attach.
  final String? photoId;

  /// An array with buttons - you can pass any buttons that are inherited from the [AbstractKeyboardAction] class.
  /// One carousel element can contain no more than 3 buttons.
  final List<KeyboardButton> buttons;

  /// An object that describes the action to take when the carousel item is clicked.
  /// Two actions are supported:
  ///
  /// - [TemplateOpenLink] - open a link from the "[TemplateOpenLink.link]" field.
  /// - [TemplateOpenPhoto] - open a photo of the current carousel item.
  final AbstractTemplateAction action;

  TemplateElement({
    this.title,
    this.description,
    this.photoId,
    this.buttons = const [],
    required this.action,
  });

  Map<String, dynamic> toJson() => _$TemplateElementToJson(this);
}

/// Template type.
@JsonEnum(fieldRename: FieldRename.snake)
enum TemplateActionType {
  /// Open a link from the [TemplateOpenLink.link] field.
  openLink,

  /// Open a photo of the current carousel item.
  openPhoto
}

/// Abstract class for field [TemplateElement.action].
/// You should use inherited classes such as:
///
/// - [TemplateOpenLink] - Open a link from the [TemplateOpenLink.link] field.
/// - [TemplateOpenPhoto] - Open a photo of the current carousel item.
@_createFactoryOff
abstract class AbstractTemplateAction {
  /// Template type.
  final TemplateActionType type;

  const AbstractTemplateAction({required this.type});

  // factory AbstractTemplateAction.fromJson(Map<String, dynamic> json) {
  //   final type = $enumDecode(_$TemplateActionTypeEnumMap, json['type']);
  //
  //   switch (type) {
  //     case TemplateActionType.openLink:
  //       return TemplateOpenLink.fromJson(json);
  //     case TemplateActionType.openPhoto:
  //       return TemplateOpenLink.fromJson(json);
  //   }
  // }

  Map<String, dynamic> toJson() => _$AbstractTemplateActionToJson(this);
}

/// Open a link from the [link] field.
@_createFactoryOff
class TemplateOpenLink extends AbstractTemplateAction {
  /// Link.
  final String link;

  const TemplateOpenLink({required this.link})
      : super(type: TemplateActionType.openLink);

  @override
  Map<String, dynamic> toJson() => _$TemplateOpenLinkToJson(this);
}

/// Open a photo of the current carousel item.
@_createFactoryOff
class TemplateOpenPhoto extends AbstractTemplateAction {
  const TemplateOpenPhoto() : super(type: TemplateActionType.openPhoto);

  @override
  Map<String, dynamic> toJson() => _$TemplateOpenPhotoToJson(this);
}
