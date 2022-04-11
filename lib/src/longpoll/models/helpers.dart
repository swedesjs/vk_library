part of '../models.dart';

DateTime dateFromJson(int time) =>
    DateTime.fromMillisecondsSinceEpoch(time * 1000);

DateTime? dateNullFromJson(int? time) =>
    time == null ? null : dateFromJson(time);

bool fieldReturnedInCase(int? value) {
  switch (value) {
    case null:
      return false;
    case 1:
      return true;
    default:
      throw Exception();
  }
}

bool whether(int value) {
  switch (value) {
    case 1:
      return true;
    case 0:
      return false;
    default:
      throw Exception();
  }
}

bool? whetherNull(int? value) => value == null ? null : whether(value);

Duration? durationNullFromJson(int? seconds) =>
    seconds == null ? null : Duration(seconds: seconds);

int? durationNullToJson(Duration? duration) => duration?.inSeconds;