part of '../models.dart';

@_createFactoryOff
class Template {
  final List<TemplateElement> elements;

  Template({this.elements = const []});

  Map<String, dynamic> toJson() => {
        'type': 'carousel',
        ..._$TemplateToJson(this),
      };
}

@_createFactoryOff
class TemplateElement {
  final String? title;
  final String? description;
  final String? photoId;
  final AbstractTemplateAction action;
  final List<AbstractKeyboardAction> buttons;

  TemplateElement({
    this.title,
    this.description,
    this.photoId,
    required this.action,
    this.buttons = const [],
  });

  Map<String, dynamic> toJson() => _$TemplateElementToJson(this);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum TemplateActionType { openLink, openPhoto }

@_createFactoryOff
abstract class AbstractTemplateAction {
  final TemplateActionType type;

  const AbstractTemplateAction({required this.type});

  Map<String, dynamic> toJson() => _$AbstractTemplateActionToJson(this);
}

@_createFactoryOff
class TemplateOpenLink extends AbstractTemplateAction {
  final String link;

  const TemplateOpenLink({required this.link})
      : super(type: TemplateActionType.openLink);

  @override
  Map<String, dynamic> toJson() => _$TemplateOpenLinkToJson(this);
}

@_createFactoryOff
class TemplateOpenPhoto extends AbstractTemplateAction {
  const TemplateOpenPhoto() : super(type: TemplateActionType.openPhoto);

  @override
  Map<String, dynamic> toJson() => _$TemplateOpenPhotoToJson(this);
}
