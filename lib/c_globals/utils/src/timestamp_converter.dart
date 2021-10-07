import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) {
    return Timestamp.fromDate(date);
  }
}

class Fbconverter {
  Fbconverter._();

  static DateTime fromJson(final timestamp) {
    if (timestamp is Timestamp)
      return timestamp.toDate();
    else
      return DateTime.parse(timestamp);
  }

  static Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}
