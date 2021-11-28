import "dart:convert";

import "package:test/test.dart";
import "package:vk_library/vk_library_options/vk_library_options.dart";

void main() {
  test("Basic Test", () {
    expect(
        const <QuestionsLeadFormsCreate>[
          QuestionsLeadFormsCreate(
              type: QuestionsLeadFormsCreateType.FIRST_NAME),
          QuestionsLeadFormsCreate(
            type: QuestionsLeadFormsCreateType.INPUT,
            label: "Cat name",
          ),
          QuestionsLeadFormsCreate(
            type: QuestionsLeadFormsCreateType.SELECT,
            key: "favorite_color",
            label: "Favorite color",
            options: [
              OptionsQuestionsLeadFormsCreate(key: "red", label: "Red"),
              OptionsQuestionsLeadFormsCreate(key: "green", label: "Green")
            ],
          ),
          QuestionsLeadFormsCreate(
            type: QuestionsLeadFormsCreateType.RADIO,
            label: "I wear a watch ...",
            options: [
              OptionsQuestionsLeadFormsCreate(
                key: "left",
                label: "on the left hand",
              ),
              OptionsQuestionsLeadFormsCreate(
                key: "right",
                label: "on the right hand",
              )
            ],
          ),
          QuestionsLeadFormsCreate(
            type: QuestionsLeadFormsCreateType.CHECKBOX,
            key: "visited_cities",
            label: "The cities I've been to",
            options: [
              OptionsQuestionsLeadFormsCreate(label: "Ekaterinburg"),
              OptionsQuestionsLeadFormsCreate(label: "Volgograd"),
              OptionsQuestionsLeadFormsCreate(label: "St. Petersburg")
            ],
          )
        ].map((e) => jsonDecode(e.toString())),
        [
          {"type": "first_name"},
          {"type": "input", "label": "Cat name"},
          {
            "type": "select",
            "key": "favorite_color",
            "label": "Favorite color",
            "options": [
              {"key": "red", "label": "Red"},
              {"key": "green", "label": "Green"}
            ]
          },
          {
            "type": "radio",
            "label": "I wear a watch ...",
            "options": [
              {"key": "left", "label": "on the left hand"},
              {"key": "right", "label": "on the right hand"}
            ]
          },
          {
            "type": "checkbox",
            "key": "visited_cities",
            "label": "The cities I've been to",
            "options": [
              {"label": "Ekaterinburg"},
              {"label": "Volgograd"},
              {"label": "St. Petersburg"}
            ]
          }
        ]);
  });
}
