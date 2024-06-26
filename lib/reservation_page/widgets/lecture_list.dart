import 'package:flutter/material.dart';

import 'lecture_list_item.dart';

class LectureList extends StatelessWidget {
  const LectureList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        LectureListItem(
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.pink),
          ),
          title: '아침 요가',
          subtitle: '아쉬탕가',
          teacher: '정재범',
          time: '07:00',
          duration: '60 mins',
        ),
        const Divider(height: 0),
        LectureListItem(
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: '저녁 요가',
          subtitle: '하타 요가',
          teacher: '김동현',
          time: '19:00',
          duration: '60 mins',
        ),
      ],
    );
  }
}
