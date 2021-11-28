part of vk_library_options;

/// Working days schedule.
class TimetableGroups {
  /// Monday.
  final KeyTimetableGroups? monday;

  /// Tuesday.
  final KeyTimetableGroups? tuesday;

  /// Wednesday.
  final KeyTimetableGroups? wednesday;

  /// Thursday.
  final KeyTimetableGroups? thursday;

  /// Friday.
  final KeyTimetableGroups? friday;

  /// Saturday.
  final KeyTimetableGroups? saturday;

  const TimetableGroups({
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
  });

  @override
  String toString() {
    return jsonEncode({
      if (monday != null) "mon": monday!._load(),
      if (tuesday != null) "tue": tuesday!._load(),
      if (wednesday != null) "wed": wednesday!._load(),
      if (thursday != null) "thu": thursday!._load(),
      if (friday != null) "fri": friday!._load(),
      if (saturday != null) "sat": saturday!._load(),
    });
  }
}

class KeyTimetableGroups {
  /// The begining of the work day.
  final Duration? openTime;

  /// The end of the work day.
  final Duration? closeTime;

  /// Break time.
  final Duration? breakOpenTime, breakCloseTime;

  const KeyTimetableGroups({
    this.openTime,
    this.closeTime,
    this.breakOpenTime,
    this.breakCloseTime,
  });

  Map<String, Object> _load() => {
        if (openTime != null) "open_time": openTime!.inMinutes,
        if (closeTime != null) "close_time": closeTime!.inMinutes,
        if (breakOpenTime != null) "break_open_time": breakOpenTime!.inMinutes,
        if (breakCloseTime != null)
          "break_close_time": breakCloseTime!.inMinutes,
      };
}
