import "dart:convert";
import "package:test/test.dart";
import "package:vk_library/vk_library_options/vk_library_options.dart";

void main() {
  test("Basic Test", () {
    expect(
        jsonDecode(const TimetableGroups(
          monday: KeyTimetableGroups(
            openTime: Duration(minutes: 1080),
            closeTime: Duration(minutes: 1380),
          ),
          tuesday: KeyTimetableGroups(
            openTime: Duration(minutes: 1080),
            closeTime: Duration(minutes: 1380),
          ),
          wednesday: KeyTimetableGroups(
            openTime: Duration(minutes: 1080),
            closeTime: Duration(minutes: 1320),
          ),
          thursday: KeyTimetableGroups(
            openTime: Duration(minutes: 1080),
            closeTime: Duration(minutes: 1320),
          ),
          friday: KeyTimetableGroups(
            openTime: Duration(minutes: 1080),
            closeTime: Duration(minutes: 1320),
          ),
          saturday: KeyTimetableGroups(
            openTime: Duration(minutes: 1080),
            closeTime: Duration(minutes: 1320),
            breakOpenTime: Duration(minutes: 1200),
            breakCloseTime: Duration(minutes: 1230),
          ),
        ).toString()),
        {
          "mon": {"open_time": 1080, "close_time": 1380},
          "tue": {"open_time": 1080, "close_time": 1380},
          "wed": {"open_time": 1080, "close_time": 1320},
          "thu": {"open_time": 1080, "close_time": 1320},
          "fri": {"open_time": 1080, "close_time": 1320},
          "sat": {
            "open_time": 1080,
            "close_time": 1320,
            "break_open_time": 1200,
            "break_close_time": 1230
          }
        });
  });
}
