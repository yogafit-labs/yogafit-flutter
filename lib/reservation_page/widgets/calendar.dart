import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

Widget buildTableCalendar({
  required CalendarFormat calendarFormat,
  required DateTime focusedDay,
  DateTime? selectedDay,
  required Function(DateTime, DateTime) onDaySelected,
  required Function(CalendarFormat) onFormatChanged,
  required Function(DateTime) onPageChanged,
}) {
  return TableCalendar(
    firstDay: DateTime.utc(2010, 10, 16),
    lastDay: DateTime.utc(2030, 3, 14),
    focusedDay: focusedDay,
    calendarFormat: calendarFormat,
    selectedDayPredicate: (day) => isSameDay(selectedDay, day),
    onDaySelected: onDaySelected,
    onFormatChanged: onFormatChanged,
    onPageChanged: onPageChanged,
    headerStyle: const HeaderStyle(
      formatButtonVisible: false,
    ),
  );
}
