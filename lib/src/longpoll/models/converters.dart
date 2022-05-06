import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter extends JsonConverter<DateTime, int> {
  const DateTimeConverter();

  @override
  DateTime fromJson(int json) =>
      DateTime.fromMillisecondsSinceEpoch(json * 1000);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch ~/ 1000;
}

class DateTimeNullConverter extends JsonConverter<DateTime?, int?> {
  const DateTimeNullConverter();

  @override
  DateTime? fromJson(int? json) {
    if (json != null) return const DateTimeConverter().fromJson(json);

    return null;
  }

  @override
  int? toJson(DateTime? object) {
    if (object != null) return const DateTimeConverter().toJson(object);

    return null;
  }
}

class DurationConverter extends JsonConverter<Duration, int> {
  const DurationConverter();

  @override
  Duration fromJson(int json) => Duration(seconds: json);

  @override
  int toJson(Duration object) => object.inSeconds;
}

class DurationNullConverter extends JsonConverter<Duration?, int?> {
  const DurationNullConverter();

  @override
  Duration? fromJson(int? json) {
    if (json != null) return const DurationConverter().fromJson(json);

    return null;
  }

  @override
  int? toJson(Duration? object) {
    if (object != null) return const DurationConverter().toJson(object);

    return null;
  }
}
