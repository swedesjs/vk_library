part of vk_library_options;

/// A carousel is a message template that contains several elements, the elements of the carousel can be scrolled horizontally.
class Template {
  /// Carousel elements.
  final List<TemplateElement> elements;

  /// Example:
  /// ```dart
  /// const Template(elements: [
  ///     TemplateElement(
  ///       photoId: "-109837093_457242811",
  ///       action: TemplateElementAction(
  ///         type: TemplateElementActionType.OPEN_PHOTO,
  ///       ),
  ///       buttons: [KeyboardText(label: "Button text 🌚", payload: {})],
  ///     ),
  ///     TemplateElement(
  ///       photoId: "-109837093_457242811",
  ///       action: TemplateElementAction(
  ///         type: TemplateElementActionType.OPEN_PHOTO,
  ///       ),
  ///       buttons: [KeyboardText(label: "Button text 2", payload: {})],
  ///     ),
  ///     TemplateElement(
  ///       photoId: "-109837093_457242811",
  ///       action: TemplateElementAction(
  ///         type: TemplateElementActionType.OPEN_PHOTO,
  ///       ),
  ///       buttons: [KeyboardText(label: "Button text 3", payload: {})],
  ///     ),
  ///   ]);
  /// ```
  const Template({required this.elements});

  @override
  String toString() {
    return jsonEncode({
      "type": "carousel",
      "elements": elements.map((e) => e._build()).toList(),
    });
  }
}

/// The class describes the element of the carousel items.
class TemplateElement {
  /// Title, maximum 80 characters
  final String? title;

  /// Subtitle, maximum 80 characters.
  final String? description;

  /// The ID of the image to attach.
  final String? photoId;

  /// Array with buttons.
  /// The required classes are shown here - [Keyboard.buttons]
  final List<_KeyboardButtons>? buttons;

  /// A parameter describing the action to be performed when clicking on a carousel item.
  final TemplateElementAction? action;

  /// The carousel element of the carousel must contain:
  /// [buttons] field;
  /// [photoId] field or title field;
  /// [description] field, if [title] is specified.
  const TemplateElement({
    this.title,
    this.description,
    this.photoId,
    this.buttons,
    this.action,
  });

  Map<String, Object> _build() => {
        if (title != null) "title": title!,
        if (description != null) "description": description!,
        if (photoId != null) "photo_id": photoId!,
        if (buttons != null) "buttons": buttons!.map((e) => e._load()).toList(),
        if (action != null) "action": action!._build()
      };
}

/// A class describing the action to be performed when clicking on a carousel item.
class TemplateElementAction {
  /// Type of.
  final TemplateElementActionType type;

  /// The link to which the user will get when clicking the carousel, when [type] = [TemplateElementActionType.OPEN_LINK]
  final String? link;

  const TemplateElementAction({required this.type, this.link});

  Map<String, Object> _build() => {
        "type": type.value,
        if (link != null) "link": link!,
      };
}

/// Enum for describing the action of the carousel element.
enum TemplateElementActionType {
  /// Open a link from the `link` field.
  OPEN_LINK,

  /// Open a photo of the current carousel item.
  OPEN_PHOTO,
}
