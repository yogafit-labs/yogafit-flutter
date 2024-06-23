import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:yogafit/reservation_page/widgets/calendar.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Column(
        children: [
          buildTableCalendar(
            calendarFormat: _calendarFormat,
            focusedDay: _focusedDay,
            selectedDay: _selectedDay,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onPageChanged: (focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
              });
            },
          ),
        ],
      ),
    );
  }
}
