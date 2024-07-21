import 'package:flutter/material.dart';
import 'package:yogafit/common/calendar.dart';
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
    return Column(
      children: [
        const Calendar(),
        LectureList(
          lectures: exampleLectures,
        ),
      ],
    );
  }
}
