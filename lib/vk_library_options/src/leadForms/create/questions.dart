part of vk_library_options;

/// Information about form questions.
class QuestionsLeadFormsCreate {
  /// Type of question.
  final QuestionsLeadFormsCreateType type;

  /// Question title (for non-standard questions only).
  final String? label;

  /// Unique question key (non-standard questions only).
  final String? key;

  /// Array of possible answers to the question (only for non-standard questions like [QuestionsLeadFormsCreateType.RADIO], [QuestionsLeadFormsCreateType.SELECT], [QuestionsLeadFormsCreateType.CHECKBOX]).
  final List<OptionsQuestionsLeadFormsCreate>? options;

  const QuestionsLeadFormsCreate({
    required this.type,
    this.label,
    this.key,
    this.options,
  });

  @override
  String toString() {
    return jsonEncode({
      "type": type.value,
      if (label != null) "label": label,
      if (key != null) "key": key,
      if (options != null) "options": options!.map((e) => e._load()).toList(),
    });
  }
}
/// Possible answers to the question.
class OptionsQuestionsLeadFormsCreate {
  /// Response text.
  final String label;
  /// Answer key.
  final String? key;

  const OptionsQuestionsLeadFormsCreate({required this.label, this.key});

  Map<String, Object> _load() => {
        "label": label,
        if (key != null) "key": key!,
      };
}

enum QuestionsLeadFormsCreateType {
  /// Name.
  FIRST_NAME,

  /// Patronymic.
  PATRONYMIC_NAME,

  /// Surname.
  LAST_NAME,

  /// E-mail address.
  EMAIL,

  /// Phone number.
  PHONE_NUMBER,

  /// Age.
  AGE,

  /// Birthday.
  BIRTHDAY,

  /// City ​​and country.
  LOCATION,

  /// A simple text box (string).
  INPUT,

  /// Large text box (paragraph).
  TEXTAREA,

  /// Choice of one of several options.
  RADIO,

  /// Choice of multiple options.
  CHECKBOX,

  /// Selecting one option from the drop-down list.
  SELECT
}
