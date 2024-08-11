extension DateTimeHelper on DateTime {
  DateTime firstMinuteOfDay() {
    return DateTime(year, month, day);
  }

  DateTime lastMinuteOfDay() {
    return DateTime(year, month, day, 23, 59, 59);
  }
}
