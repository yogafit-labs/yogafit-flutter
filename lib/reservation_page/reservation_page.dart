import 'package:flutter/material.dart';

import 'widgets/calendar.dart';
import 'widgets/lecture_list.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  var exampleLectures = [
    LectureInfo(
      thumbnailColor: Colors.pink,
      title: '아침 요가',
      subtitle: '아쉬탕가',
      teacher: '정재범',
      time: '07:00',
      duration: '60 mins',
    ),
    LectureInfo(
      thumbnailColor: Colors.blue,
      title: '저녁 요가',
      subtitle: '하타 요가',
      teacher: '김동현',
      time: '19:00',
      duration: '60 mins',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Column(
        children: [
          const Calendar(),
          LectureList(
            lectures: exampleLectures,
          ),
        ],
      ),
      bottomNavigationBar: const _BottomNavigationBar(),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar();

  @override
  createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Social',
        ),
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onTab,
    );
  }

  void _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
